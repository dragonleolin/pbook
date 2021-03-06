import React, { useState } from 'react'
import axios from 'axios'

export function Search(props) {
  const [s_result, outputResult] = useState([])
  const [searchText, setSearch] = useState({
    text: '',
    getData: false,
  })
  const { search_result } = props

  const changeHandler = e => {
    e.preventDefault()
    setSearch({
      ...searchText,
      [e.target.name]: e.target.value,
    })
    search_result(e.target.value)
    let search = e.target.value
    if (search !== '') {
      axios
        .get(`http://localhost:5555/reviews/search_book/?${search}`)
        .then(res => {
          outputResult(res.data.data)
          console.log(res.data.data)
          setSearch({ getData: true })
        })
    } else {
      setSearch({ getData: false })
    }
  }

  const setName = e => {
    let x = e.target.value
    for (let i = 0; i < s_result.length; i++) {
      if (s_result[i].sid == x) {
        let data = s_result[i].name
        setSearch({ text: data })
        search_result(data)
      }
    }
  }

  return (
    <div>
      <input
        name="text"
        value={searchText.text}
        onChange={changeHandler}
        className="reviews_search"
        type="search"
        placeholder="搜尋書名"
      />
      {searchText.getData ? (
        <ul className="reviews_search_result">
          {s_result.map((res, index) => (
            <>
              <li key={index} value={res.sid} onClick={setName}>
                {res.name}
              </li>
            </>
          ))}
        </ul>
      ) : (
        ''
      )}
    </div>
  )
}

export default Search
