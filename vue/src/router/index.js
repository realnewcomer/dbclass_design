import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

// 解决导航栏或者底部导航tabBar中的vue-router在3.0版本以上频繁点击菜单报错的问题。
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
  return originalPush.call(this, location).catch(err => err)
}

const routes = [{
    path: '/',
    name: 'Manager',
    component: () => import('../views/Manager.vue'),
    redirect: '/login', // 重定向到主页
    children: [{
        path: '403',
        name: 'NoAuth',
        meta: {
          name: '无权限'
        },
        component: () => import('../views/manager/403')
      },
      {
        path: 'home',
        name: 'Home',
        meta: {
          name: '系统首页'
        },
        component: () => import('../views/manager/Home')
      },
      {
        path: 'admin',
        name: 'Admin',
        meta: {
          name: '管理员信息'
        },
        component: () => import('../views/manager/Admin')
      },
      {
        path: 'information',
        name: 'Information',
        meta: {
          name: '课程审核'
        },
        component: () => import('../views/manager/Information')
      },
      {
        path: 'user',
        name: 'User',
        meta: {
          name: '用户信息'
        },
        component: () => import('../views/manager/User')
      },
      {
        path: 'adminPerson',
        name: 'AdminPerson',
        meta: {
          name: '个人信息'
        },
        component: () => import('../views/manager/AdminPerson')
      },
      {
        path: 'password',
        name: 'Password',
        meta: {
          name: '修改密码'
        },
        component: () => import('../views/manager/Password')
      },
      {
        path: 'notice',
        name: 'Notice',
        meta: {
          name: '公告信息'
        },
        component: () => import('../views/manager/Notice')
      },
      {
        path: 'judge',
        name: 'Judge',
        meta: {
          name: '公告信息'
        },
        component: () => import('../views/manager/Judge.vue')
      },
      {
        path: 'allQuestion',
        name: 'AllQuestion',
        meta: {
          name: '全部试题管理'
        },
        component: () => import('../views/manager/AllQuestion.vue')
      },
      {
        path: 'course',
        name: 'Course',
        meta: {
          name: '课程管理'
        },
        component: () => import('../views/manager/Course')
      },
      {
        path: 'score',
        name: 'Score',
        meta: {
          name: '积分专区'
        },
        component: () => import('../views/manager/Score')
      },
      {
        path: 'orders',
        name: 'Orders',
        meta: {
          name: '课程订单'
        },
        component: () => import('../views/manager/Orders.vue')
      },
      {
        path: 'scoreOrder',
        name: 'ScoreOrder',
        meta: {
          name: '积分兑课'
        },
        component: () => import('../views/manager/ScoreOrder.vue')
      },
      {
        path: 'fileOrder',
        name: 'FileOrder',
        meta: {
          name: '下载记录'
        },
        component: () => import('../views/manager/FileOrder.vue')
      },
      {
        path: 'question',
        name: 'Question',
        meta: {
          name: '题库内容'
        },
        component: () => import('../views/manager/Question.vue')
      },
      { path: 'type', name: 'Type', meta: { name: '分类信息' }, component: () => import('../views/manager/Type') },
      { path: 'comment', name: 'Comment', meta: { name: '评论管理' }, component: () => import('../views/manager/Comment') },
    ]
  },
  {
    path: '/front',
    name: 'Front',
    redirect: '/home',
    component: () => import('../views/Front.vue'),
    children: [{
        path: 'home',
        name: 'Home',
        meta: {
          name: '系统首页'
        },
        component: () => import('../views/front/Home')
      },
      {
        path: 'course',
        name: 'Course',
        meta: {
          name: '全部课程'
        },
        component: () => import('../views/front/Course')
      },
      {
        path: 'orders',
        name: 'Orders',
        meta: {
          name: '课程订单'
        },
        component: () => import('../views/front/Orders')
      },
      {
        path: 'information',
        name: 'Information',
        meta: {
          name: '海量资源'
        },
        component: () => import('../views/front/Information')
      },
      {
        path: 'informationDetail',
        name: 'InformationDetail',
        meta: {
          name: '海量资源详情'
        },
        component: () => import('../views/front/InformationDetail')
      },
      {
        path: 'score',
        name: 'Score',
        meta: {
          name: '积分专区'
        },
        component: () => import('../views/front/Score')
      },
      {
        path: 'courseDetail',
        name: 'CourseDetail',
        meta: {
          name: '课程详情'
        },
        component: () => import('../views/front/CourseDetail')
      },
      {
        path: 'scoreDetail',
        name: 'ScoreDetail',
        meta: {
          name: '积分课程详情'
        },
        component: () => import('../views/front/ScoreDetail')
      },
      {
        path: 'questionDetail',
        name: 'QuestionDetail',
        meta: {
          name: '积分课程详情'
        },
        component: () => import('../views/front/QuestionDetail.vue')
      },
      {
        path: 'myInfo',
        name: 'MyInfo',
        meta: {
          name: '我的资料'
        },
        component: () => import('../views/front/MyInfo')
      },
      {
        path: 'question',
        name: 'Question',
        meta: {
          name: '我的资料'
        },
        component: () => import('../views/front/Question.vue')
      },
      {
        path: 'scoreOrder',
        name: 'ScoreOrder',
        meta: {
          name: '积分课程订单'
        },
        component: () => import('../views/front/ScoreOrder.vue')
      },
      {
        path: 'fileOrder',
        name: 'FileOrder',
        meta: {
          name: '海量资源课程订单'
        },
        component: () => import('../views/front/FileOrder.vue')
      },
      {
        path: 'person',
        name: 'Person',
        meta: {
          name: '个人信息'
        },
        component: () => import('../views/front/Person')
      },
      {
        path: 'exam',
        name: 'Exam',
        meta: {
          name: '试卷'
        },
        component: () => import('../views/front/Exam.vue')
      },
      {
        path: 'paper1',
        name: 'Paper1',
        meta: {
          name: '试卷'
        },
        component: () => import('../views/front/paper1.vue')
      },
      {
        path: 'paper2',
        name: 'Paper2',
        meta: {
          name: '试卷'
        },
        component: () => import('../views/front/paper2.vue')
      },
      {
        path: 'paper3',
        name: 'Paper3',
        meta: {
          name: '试卷'
        },
        component: () => import('../views/front/paper3.vue')
      },
      {
        path: 'paper4',
        name: 'Paper4',
        meta: {
          name: '试卷'
        },
        component: () => import('../views/front/paper4.vue')
      },
      {
        path: 'paper5',
        name: 'Paper5',
        meta: {
          name: '试卷'
        },
        component: () => import('../views/front/paper5.vue')
      },
      {
        path: 'paper6',
        name: 'Paper6',
        meta: {
          name: '试卷'
        },
        component: () => import('../views/front/paper6.vue')
      },
      {
        path: 'examJudge',
        name: 'ExamJudge',
        meta: {
          name: '随机判断题'
        },
        component: () => import('../views/front/examJudge.vue')
      },
      { path: 'collect', name: 'Collect', meta: { name: '我的收藏' }, component: () => import('../views/front/Collect') },
      { path: 'like', name: 'Like', meta: { name: '我的喜欢' }, component: () => import('../views/front/Like') },
      { path: 'search', name: 'Search', meta: { name: '搜索页面' }, component: () => import('../views/front/Search') },
      { path: 'gpt', name: 'Gpt', meta: { name: 'gpt' }, component: () => import('../views/front/Gpt') },
      { path: 'demo', name: 'Demo', meta: { name: '练习' }, component: () => import('../views/front/Demo.vue') },
      { path: 'course1', name: 'Course1', meta: { name: '课程一' }, component: () => import('../views/front/Course1.vue') },
      { path: 'course2', name: 'Course2', meta: { name: '课程二' }, component: () => import('../views/front/Course2.vue') },
      { path: 'course3', name: 'Course3', meta: { name: '课程三' }, component: () => import('../views/front/Course3.vue') },
      { path: 'course4', name: 'Course4', meta: { name: '课程四' }, component: () => import('../views/front/Course4.vue') },
      { path: 'course5', name: 'Course5', meta: { name: '课程五' }, component: () => import('../views/front/Course5.vue') },
      { path: 'course6', name: 'Course6', meta: { name: '课程六' }, component: () => import('../views/front/Course6.vue') },
      { path: 'course7', name: 'Course7', meta: { name: '课程七' }, component: () => import('../views/front/Course7.vue') },
      { path: 'course8', name: 'Course8', meta: { name: '课程八' }, component: () => import('../views/front/Course8.vue') },
      { path: 'course9', name: 'Course9', meta: { name: '课程九' }, component: () => import('../views/front/Course9.vue') },

    ]
  },
  {
    path: '/login',
    name: 'Login',
    meta: {
      name: '登录'
    },
    component: () => import('../views/Login.vue')
  },
  {
    path: '/register',
    name: 'Register',
    meta: {
      name: '注册'
    },
    component: () => import('../views/Register.vue')
  },
  {
    path: '*',
    name: 'NotFound',
    meta: {
      name: '无法访问'
    },
    component: () => import('../views/404.vue')
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

// 注：不需要前台的项目，可以注释掉该路由守卫
// 路由守卫
// router.beforeEach((to ,from, next) => {
//   let user = JSON.parse(localStorage.getItem("xm-user") || '{}');
//   if (to.path === '/') {
//     if (user.role) {
//       if (user.role === 'USER') {
//         next('/front/home')
//       } else {
//         next('/home')
//       }
//     } else {
//       next('/login')
//     }
//   } else {
//     next()
//   }
// })

export default router