import React from 'react'
import { BrowserRouter as Router, Route, Link, Switch } from 'react-router-dom'
import ReactResizeDetector from 'react-resize-detector'
import swal from '@sweetalert/with-react'
import Home from '../../pages/Home'
import Reviewer from '../../pages/Reviewer'
import Books from '../../pages/Books'
import Activities from '../../pages/activities/Activities'
import Reviews from '../../pages/Reviews'
import Forum from '../../pages/Forum/ForumNavBar'
import PostArticle from '../../pages/Forum/PostArticle'
import Login from '../../pages/login/Login'
import Member from '../../pages/member/Member'
import Game from '../../pages/game/Game'
import Cart from '../../pages/Cart'
import NoPage from '../../pages/nopage/NoPage'
import Chat from '../../components/member/chat/Chat'
import ReviewerBooks from '../../pages/ReviewerBooks'
import ReviewerBlog from '../../pages/ReviewerBlog'
import BookReviews from '../../pages/BookReview/BookReviews'
import ResetPWD from '../../pages/ResetPWD'
import './header.css'

export default class Header extends React.Component {
  constructor() {
    super()
    this.state = {
      loginImg: '',
      member: {},
      login: false,
    }
  }
  // 'http://localhost:5555/images/member/yoko.jpg'
  // loginSuccess(memberData){
  //   console.log("memberData", memberData);

  //   this.setState({hasData:true,id:memberData.MR_number,name:memberData.MR_name,level:memberData.MR_personLevel})
  // }

  handleLoginButton = event => {
    let loginButton = event.currentTarget
    let loginImg = loginButton.querySelector('.loginImg')
    let loginText = loginButton.querySelectorAll('.loginText')

    loginButton.classList.add('transition')
    loginButton.classList.toggle('long')
    setTimeout(() => {
      loginImg.classList.toggle('show')
      for (let i = 0; i < loginText.length; i++) {
        loginText[i].classList.toggle('show')
      }
    }, 200)
  }

  handleStopPropagation = event => {
    event.stopPropagation()
  }

  clickLogin = () => {
    this.setState({ login: true })
  }

  handleLogout = () => {
    swal({
      title: '您確定要登出嗎?',
      icon: 'warning',
      buttons: true,
      dangerMode: true,
    }).then(willDelete => {
      if (willDelete) {
        swal('您已經成功登出!', {
          icon: 'success',
        })
        fetch('http://localhost:5555/logout', {
          method: 'GET',
          credentials: 'include',
        }).then(res => {
          console.log('logout')
        })

        setTimeout(() => {
          localStorage.removeItem('user')
          window.location.href = '/'
        }, 1000)
      }
    })
  }

  onResize = () => {
    let loginButton = document.querySelector('.loginButton')
    loginButton.classList.remove('transition')
  }

  handlePhoneTitle = event => {
    event.currentTarget.classList.toggle('active')
  }

  componentDidMount() {
    let pic = JSON.parse(localStorage.getItem('user'))
    if (pic !== null) {
      this.queryMember()
    }
    // }
    // console.log('componentDidMount')
    // 模擬會員登入後的狀態
    // setTimeout(() => {
    //     this.setState({
    //         id: "MR00001",
    //         name: "橫山裕",
    //         level: "品書學徒",
    //         loginImg: "./images/yoko.jpg",
    //     })
    // }, 1000)
    // 品書通知的東西
    // load()
    // var notification;
    // function load() {
    //     if (Notification.permission === "granted") {
    //         //console.log("允許");
    //         notification = new Notification("品書通知", {
    //             body: "Notification Demo...",
    //             icon: require('./images/P_logo.png')
    //         });
    //     } else if (Notification.permission === "default") {
    //         console.log("要求權限");
    //         getPermission(load);
    //     } else {
    //         console.log("拒絕");
    //     }
    //     console.log(notification);
    // }
    // function getPermission(cb) {
    //     Notification.requestPermission(cb);
    // }
  }

  //查詢會員資料重設圖片
  queryMember() {
    let number = JSON.parse(localStorage.getItem('user')).MR_number
    // console.log(number);

    fetch('http://localhost:5555/member', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      credentials: 'include',
      body: JSON.stringify({
        number: number,
      }),
    })
      .then(response => {
        if (!response) throw new Error(response.statusText)
        // console.log('3'+response);
        return response.json()
      })
      .then(data => {
        // console.log("test", data);
        let newPic = 'http://localhost:5555/images/member/' + data[0].MR_pic
        console.log(newPic)

        this.setState({ loginImg: newPic, member: data[0] })
      })
  }

  // componentDidUpdate(prevProps) {
  //   // console.log('DID UPDATE')
  //   // console.log(this.props)
  // }
  // shouldComponentUpdate() {}

  render() {
    // let phoneMemberStatus = 'none'
    // if (JSON.parse(localStorage.getItem('user')).MR_number !== '') phoneMemberStatus = 'block'
    // let phoneVisitorStatus = 'block'
    // if (JSON.parse(localStorage.getItem('user')).MR_number !== '') phoneVisitorStatus = 'none'
    let level = [
      '',
      '品書會員',
      '品書學徒',
      '品書專家',
      '品書大師',
      '品書至尊',
      '書評家',
    ]

    return (
      <>
        <img
          src={require('./images/header.jpg')}
          className="img-fluid header-img"
          alt=""
        />

        <Router>
          <Link
            to="/"
            className="myHeaderLogo position-absolute pointer"
          ></Link>

          <div className="mwt_border"></div>

          <div className="cartButton position-absolute d-flex flex-column justify-content-center align-items-center pointer">
            <Link to="/cart" className="titleZh-white">
              購物車
            </Link>
            <span className="titleEn">CART</span>
          </div>

          {JSON.parse(localStorage.getItem('user')) === null ? (
            <>
              <div
                className="loginButton position-absolute d-flex flex-column justify-content-center align-items-center pointer"
                onClick={this.clickLogin}
              >
                <span className="titleZh-white">登入</span>
                <span className="titleEn">LOGIN</span>
              </div>
            </>
          ) : (
            <>
              <div
                className="loginButton position-absolute d-flex flex-column justify-content-center align-items-center pointer"
                onClick={this.handleLoginButton}
              >
                <span className="titleZh-white">
                  {JSON.parse(localStorage.getItem('user')).MR_name}
                </span>
                <span className="titleEn">
                  {
                    level[
                      JSON.parse(localStorage.getItem('user')).MR_personLevel
                    ]
                  }
                </span>
                <span
                  className="loginImg"
                  style={{
                    backgroundImage: `url(${this.state.loginImg})`,
                  }}
                ></span>
                <Link
                  to="/member"
                  className="loginText"
                  onClick={this.handleStopPropagation}
                >
                  會員資料
                </Link>
                <Link
                  to="/game"
                  className="loginText"
                  onClick={this.handleStopPropagation}
                >
                  二手書配對
                </Link>
                <Link
                  to="/chat"
                  className="loginText"
                  onClick={this.handleStopPropagation}
                >
                  聊天室
                </Link>
                <div className="loginText" onClick={this.handleLogout}>
                  登出
                </div>
              </div>
            </>
          )}

          {this.state.login === false ? (
            <>
              <section className="d-flex justify-content-center titleButton">
                <Link
                  to="/reviewer"
                  className="myHeaderTextCenter mx-4 pointer"
                >
                  <span className="titleZh">書評家</span>
                  <br />
                  <span className="titleEn">REVIEWER</span>
                </Link>
                <Link to="/books" className="myHeaderTextCenter mx-4 pointer">
                  <span className="titleZh">書籍商城</span>
                  <br />
                  <span className="titleEn">BOOKS</span>
                </Link>
                <Link
                  to="/activities"
                  className="myHeaderTextCenter mx-4 pointer"
                >
                  <span className="titleZh">品書活動</span>
                  <br />
                  <span className="titleEn">ACTIVITIES</span>
                </Link>
                <Link to="/reviews" className="myHeaderTextCenter mx-4 pointer">
                  <span className="titleZh">品書書評</span>
                  <br />
                  <span className="titleEn">REVIEWS</span>
                </Link>
                <Link to="/forum" className="myHeaderTextCenter mx-4 pointer">
                  <span className="titleZh">品書討論區</span>
                  <br />
                  <span className="titleEn">FORUM</span>
                </Link>
              </section>
            </>
          ) : (
            <>
              <section className="d-flex justify-content-center titleButton">
                <Link
                  to="/reviewer"
                  className="myHeaderTextCenter mx-4 pointer"
                >
                  <span className="titleZh">書評家</span>
                  <br />
                  <span className="titleEn">REVIEWER</span>
                </Link>
                <Link to="/books" className="myHeaderTextCenter mx-4 pointer">
                  <span className="titleZh">書籍商城</span>
                  <br />
                  <span className="titleEn">BOOKS</span>
                </Link>
                <Link
                  to="/activities"
                  className="myHeaderTextCenter mx-4 pointer"
                >
                  <span className="titleZh">品書活動</span>
                  <br />
                  <span className="titleEn">ACTIVITIES</span>
                </Link>
                <Link to="/reviews" className="myHeaderTextCenter mx-4 pointer">
                  <span className="titleZh">品書書評</span>
                  <br />
                  <span className="titleEn">REVIEWS</span>
                </Link>
                <Link to="/forum" className="myHeaderTextCenter mx-4 pointer">
                  <span className="titleZh">品書討論區</span>
                  <br />
                  <span className="titleEn">FORUM</span>
                </Link>
              </section>
              <Login />
            </>
          )}

          <div className="phoneTitleHide">
            <div className="myHeaderMenu" onClick={this.handlePhoneTitle}>
              <div className="bar bar1"></div>
              <div className="bar bar2"></div>
              <div className="bar bar3"></div>
              <ul>
                {JSON.parse(localStorage.getItem('user')) === null ? (
                  <>
                    <li>
                      <div className="myHeaderA" onClick={this.clickLogin}>
                        登入
                      </div>
                    </li>
                    <li>
                      <Link to="/cart" className="myHeaderA">
                        購物車
                      </Link>
                    </li>
                    <li>
                      <Link to="/reviewer" className="myHeaderA">
                        書評家
                      </Link>
                    </li>
                    <li>
                      <Link to="/books" className="myHeaderA">
                        書籍商城
                      </Link>
                    </li>
                    <li>
                      <Link to="/activities" className="myHeaderA">
                        品書活動
                      </Link>
                    </li>
                    <li>
                      <Link to="/reviews" className="myHeaderA">
                        品書書評
                      </Link>
                    </li>
                    <li>
                      <Link to="/forum" className="myHeaderA">
                        品書討論區
                      </Link>
                    </li>
                  </>
                ) : (
                  <>
                    <li>
                      <Link to="/member" className="myHeaderA">
                        {JSON.parse(localStorage.getItem('user')).MR_name}
                      </Link>
                    </li>
                    <li>
                      <Link to="/game" className="myHeaderA">
                        二手書配對
                      </Link>
                    </li>
                    <li>
                      <Link to="/chat" className="myHeaderA">
                        聊天室
                      </Link>
                    </li>
                    <li>
                      <Link to="/cart" className="myHeaderA">
                        購物車
                      </Link>
                    </li>
                    <li>
                      <Link to="/reviewer" className="myHeaderA">
                        書評家
                      </Link>
                    </li>
                    <li>
                      <Link to="/books" className="myHeaderA">
                        書籍商城
                      </Link>
                    </li>
                    <li>
                      <Link to="/activities" className="myHeaderA">
                        品書活動
                      </Link>
                    </li>
                    <li>
                      <Link to="/reviews" className="myHeaderA">
                        品書書評
                      </Link>
                    </li>
                    <li>
                      <Link to="/forum" className="myHeaderA">
                        品書討論區
                      </Link>
                    </li>
                    <li>
                      <div className="myHeaderA" onClick={this.handleLogout}>
                        登出
                      </div>
                    </li>
                  </>
                )}
              </ul>
            </div>
          </div>

          <Switch>
            <Route exact path="/" component={Home} />
            <Route exact path="/reviewer" component={Reviewer} />
            <Route
              exact
              path="/Reviewer/ReviewerBooks/:sid?"

              component={ReviewerBooks} />
            <Route exact
              path="/reviewer/reviewerBooks/reviewerBlog/:sid?" 
              component={ReviewerBlog} />

            <Route path="/books" component={Books} />

            <Route path="/activities" component={Activities} />
            <Route exact path="/reviews" component={Reviews} />

            {/* <Route path="/forum" component={Forum} /> */}
            <Route exact path="/book_reviews/:sid" component={BookReviews} />

            <Route exact path="/forum/post" component={PostArticle} />
            <Route path="/forum" component={Forum} />

            {/* <Route exact path="/login" component={()=><Login loginSuccess={(memberData)=>{ this.loginSuccess(memberData) }}/>} /> */}
            <Route exact path="/" component={Login} />
            <Route exact path="/member" component={Member} />
            <Route exact path="/game" component={Game} />
            <Route exact path="/chat" component={Chat} />
            <Route exact path="/cart" component={Cart} />
            <Route exact path="/cart" component={Cart} />
            <Route path="/ResetPWD/:id" component={ResetPWD} />
            <Route exact component={NoPage} />
          </Switch>
        </Router>

        <ReactResizeDetector
          handleWidth
          handleHeight
          onResize={this.onResize}
        />
      </>
    )
  }
}
