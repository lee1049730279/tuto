/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 19);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/*!************************************!*\
  !*** ./components/comment/Base.js ***!
  \************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _ = __webpack_require__(/*! @global/ejs/2.5.2 */ 23);

var ejs = _interopRequireWildcard(_);

var _2 = __webpack_require__(/*! @global/event/1.0.0 */ 4);

var _3 = _interopRequireDefault(_2);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj["default"] = obj; return newObj; } }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

/** @constant {String} 未初始状态 */
var UNINITED = 'UNINITED';
/** @constant {String} 已初始状态 */
var INITED = 'INITED';
/** @constant {String} 未加载状态 */
var UNLOADED = 'UNLOADED';
/** @constant {String} 已加载状态 */
var LOADED = 'LOADED';
/** @constant {String} 未加载DOM状态 */
var UNMOUNTED = 'UNMOUNTED';
/** @constant {String} 已加载DOM状态 */
var MOUNTED = 'MOUNTED';
/** @constant {String} 未渲染状态 */
var UNRENDERED = 'UNRENDERED';
/** @constant {String} 已渲染状态 */
var RENDERED = 'RENDERED';

var $$ = window.$;

var _class = function (_Events) {
    _inherits(_class, _Events);

    function _class() {
        _classCallCheck(this, _class);

        var _this = _possibleConstructorReturn(this, (_class.__proto__ || Object.getPrototypeOf(_class)).call(this));

        _this.data = null;
        _this.initState = UNINITED;
        _this.loadState = UNLOADED;
        _this.mountState = UNMOUNTED;
        _this.renderState = UNRENDERED;
        _this.$el = $$('<div />');
        _this.ejs = ejs;
        return _this;
    }

    _createClass(_class, [{
        key: 'setInitedState',
        value: function setInitedState() {
            this.initState = INITED;
        }
    }, {
        key: 'setLoadedState',
        value: function setLoadedState() {
            this.loadState = LOADED;
        }
    }, {
        key: 'setMountedState',
        value: function setMountedState() {
            this.mountState = MOUNTED;
        }
    }, {
        key: 'setUnmountedState',
        value: function setUnmountedState() {
            this.mountState = UNMOUNTED;
        }
    }, {
        key: 'setRenderedState',
        value: function setRenderedState() {
            this.renderState = RENDERED;
        }
    }, {
        key: 'setUnrenderedState',
        value: function setUnrenderedState() {
            this.renderState = UNRENDERED;
        }
    }, {
        key: 'updateRenderState',
        value: function updateRenderState() {
            if (this.initState === INITED && this.loadState === LOADED && this.mountState === MOUNTED) {
                this.setRenderedState();
            } else {
                this.setUnrenderedState();
            }
        }
    }, {
        key: 'isInited',
        value: function isInited() {
            return this.initState === INITED;
        }
    }, {
        key: 'isLoaded',
        value: function isLoaded() {
            return this.loadState === LOADED;
        }
    }, {
        key: 'isMounted',
        value: function isMounted() {
            return this.mountState === MOUNTED;
        }
    }, {
        key: 'isRendered',
        value: function isRendered() {
            return this.renderState === RENDERED;
        }
        /**
         * 初始操作
         *  同时置为已初始状态
         *  此方法应执行一次
         * @return {Boolean} 是否成功初始化
         */

    }, {
        key: 'init',
        value: function init() {
            if (this.isInited()) {
                return false;
            }
            this.setInitedState();
            return true;
        }
        /**
         * 加载数据
         *  同时置为已加载状态
         * @param {Any} data
         */

    }, {
        key: 'load',
        value: function load(data) {
            this.data = data;
            this.setLoadedState();
            this.updateRenderState();
            this.render();
        }
        /**
         * 加载视图到DOM树
         * @param {jQueryElement|Function} arg
         *  如果传入jQueryElement，则直接append
         *  如果传入function，则将$el传入arg，且在该函数返回true时，表示加载成功
         * @return {Boolean} 是否成功加载试图
         */

    }, {
        key: 'mount',
        value: function mount(arg) {
            if (this.isMounted()) {
                return;
            }
            var result = false;

            if ($$.isFunction(arg)) {
                result = arg(this.$el);
            } else if (arg instanceof $$) {
                arg.append(this.$el);
                result = true;
            }

            if (result === true) {
                this.setMountedState();
                this.updateRenderState();
                this.render();
            }

            return !!result;
        }
    }, {
        key: 'unmount',
        value: function unmount(notEmpty) {
            if (this.isMounted()) {
                this.$el.detach();
                if (!notEmpty) {
                    this.$el.empty();
                }
                this.setUnmountedState();
                this.updateRenderState();
            }
        }

        /**
         * 渲染
         *  只有在已渲染状态下，才允许执行渲染操作
         * @return {Boolean} 是否成功渲染
         */

    }, {
        key: 'render',
        value: function render() {
            return this.isRendered();
        }
    }, {
        key: '$',
        value: function $(selector) {
            if (this.$el) {
                return this.$el.find(selector);
            }
            return null;
        }

        /**
         * 销毁当前实例
         *  删除data引用
         *  删除视图
         */

    }, {
        key: 'destroy',
        value: function destroy() {
            this.data = null;
            if (this.$el) {
                this.$el.remove();
                this.$el = null;
            }
        }
        /**
         * 显示视图
         */

    }, {
        key: 'show',
        value: function show() {
            if (this.$el) {
                this.$el.show();
            }
        }
        /**
         * 隐藏视图
         */

    }, {
        key: 'hide',
        value: function hide() {
            if (this.$el) {
                this.$el.hide();
            }
        }
    }]);

    return _class;
}(_3["default"]);

exports["default"] = _class;

/***/ }),
/* 1 */,
/* 2 */
/*!**********************************************!*\
  !*** ./components/common/is-support-flex.js ***!
  \**********************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
function isSupportFlex() {
    try {
        var tempElement = document.createElement('div');
        tempElement.style.display = 'flex';

        return tempElement.style.display === 'flex';
    } catch (err) {
        return false;
    }
}

exports["default"] = isSupportFlex();

/***/ }),
/* 3 */
/*!**************************************!*\
  !*** ./components/comment/config.js ***!
  \**************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _CATEGORY_MAP;

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

/** @constant {String} 产品点评分类 */
var CATEGORY_PRODUCT = exports.CATEGORY_PRODUCT = 'CATEGORY_PRODUCT';

/** @constant {String} 酒店点评分类 */
var CATEGORY_HOTEL = exports.CATEGORY_HOTEL = 'CATEGORY_HOTEL';

/** @constant {String} 景点点评分类 */
var CATEGORY_VIEWPORT = exports.CATEGORY_VIEWPORT = 'CATEGORY_VIEWPORT';

/** @constant {String} 默认点评分类：产品点评分类 */
var DEFAULT_CATEGORY = exports.DEFAULT_CATEGORY = CATEGORY_PRODUCT;

/** @constant {String} 创建点评链接 */
var URL_CREATE_COMMENT = exports.URL_CREATE_COMMENT = 'https://i.tuniu.com/list';

/** @constant {String} 产品点评接口地址 */
var URL_PRODUCT_COMMENT = exports.URL_PRODUCT_COMMENT = '/papi/tour/comment/product';

/** @constant {String} 资源点评接口地址 */
var URL_RESOURCE_COMMENT = exports.URL_RESOURCE_COMMENT = '/papi/tour/comment/resource';

/** @constant {String}  http请求abort错误 */
var ERROR_FETCH_ABORT = exports.ERROR_FETCH_ABORT = 'ERROR_FETCH_ABORT';

/** @constant {String}  http请求数据为空错误 */
var ERROR_DATA_EMPTY = exports.ERROR_DATA_EMPTY = 'ERROR_DATA_EMPTY';

/** @constant {Object} 点评tab: 0产品 1酒店 2景点 */
var CATEGORY_MAP = exports.CATEGORY_MAP = (_CATEGORY_MAP = {}, _defineProperty(_CATEGORY_MAP, CATEGORY_PRODUCT, 0), _defineProperty(_CATEGORY_MAP, CATEGORY_HOTEL, 1), _defineProperty(_CATEGORY_MAP, CATEGORY_VIEWPORT, 2), _CATEGORY_MAP);

/***/ }),
/* 4 */
/*!*************************************************!*\
  !*** ../common/components/event/1.0.0/index.js ***!
  \*************************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function isFunction(fn) {
    return typeof fn === 'function';
}

var _class = function () {
    function _class() {
        _classCallCheck(this, _class);

        this._events = {};
    }

    _createClass(_class, [{
        key: 'on',
        value: function on(eventType) {
            var handlers = void 0;
            if (!(handlers = this._events[eventType])) {
                handlers = this._events[eventType] = [];
            }

            for (var _len = arguments.length, newHandlers = Array(_len > 1 ? _len - 1 : 0), _key = 1; _key < _len; _key++) {
                newHandlers[_key - 1] = arguments[_key];
            }

            newHandlers.filter(function (handler) {
                return isFunction(handler);
            }).forEach(function (handler) {
                return handlers.push(handler);
            });
        }
    }, {
        key: 'dispatch',
        value: function dispatch(eventType) {
            var _this = this;

            for (var _len2 = arguments.length, data = Array(_len2 > 1 ? _len2 - 1 : 0), _key2 = 1; _key2 < _len2; _key2++) {
                data[_key2 - 1] = arguments[_key2];
            }

            var handlers = this._events[eventType];
            if (Array.isArray(handlers)) {
                handlers.forEach(function (handler) {
                    handler.apply(_this, data);
                });
            }
        }
    }]);

    return _class;
}();

exports["default"] = _class;

/***/ }),
/* 5 */,
/* 6 */,
/* 7 */,
/* 8 */,
/* 9 */,
/* 10 */,
/* 11 */,
/* 12 */,
/* 13 */,
/* 14 */,
/* 15 */,
/* 16 */,
/* 17 */,
/* 18 */,
/* 19 */
/*!****************************!*\
  !*** ./entries/comment.js ***!
  \****************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


var _container = __webpack_require__(/*! @/comment/container */ 20);

var _container2 = _interopRequireDefault(_container);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

var container = null; /**
                       * 详情点评模块入口
                       * 适用于跟团、自助、自驾、定制游
                       * 通过挂载在window的commentModule属性下，暴露给外部系统使用
                       * @author transformer
                       */

var comment = {
    /**
     * 初始点评模块
     *  初始
     *  加载视图
     *  加载初始数据
     * @public
     * @param {Object} options 点评模块参数
     * @param {Selector|jQueryElement|HTMLElement} options.el 点评容器元素
     * @param {Number} options.productId 当前线路ID
     * @param {Object} options.tab 显示的tab {product: true|false, hotel: true|false, scenic: true|false}
     */
    init: function init(options) {
        if (container) {
            return;
        }
        container = (0, _container2["default"])({
            el: options.el,
            productId: options.productId || 210000261,
            tab: options.tab || { product: false },
            type: options.type || false
        });
        container.init();
        container.load();
    }
};

/** @global */
window.commentModule = comment;

/***/ }),
/* 20 */
/*!***********************************************!*\
  !*** ./components/comment/container/index.js ***!
  \***********************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _get = function get(object, property, receiver) { if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { return get(parent, property, receiver); } } else if ("value" in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } };

var _typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; };

exports["default"] = function (options) {
    return new Container(options);
};

__webpack_require__(/*! ./index.scss */ 21);

var _frame = __webpack_require__(/*! ./frame.ejs */ 22);

var _frame2 = _interopRequireDefault(_frame);

var _Base2 = __webpack_require__(/*! @/comment/Base */ 0);

var _Base3 = _interopRequireDefault(_Base2);

var _tab = __webpack_require__(/*! @/comment/tab */ 28);

var _tab2 = _interopRequireDefault(_tab);

var _tag = __webpack_require__(/*! @/comment/tag */ 32);

var _tag2 = _interopRequireDefault(_tag);

var _list = __webpack_require__(/*! @/comment/list */ 35);

var _list2 = _interopRequireDefault(_list);

var _pagination = __webpack_require__(/*! @/comment/pagination */ 40);

var _pagination2 = _interopRequireDefault(_pagination);

var _summary = __webpack_require__(/*! @/comment/summary */ 43);

var _summary2 = _interopRequireDefault(_summary);

var _contentError = __webpack_require__(/*! @/comment/content-error */ 46);

var _contentError2 = _interopRequireDefault(_contentError);

var _isSupportFlex = __webpack_require__(/*! @/common/is-support-flex */ 2);

var _isSupportFlex2 = _interopRequireDefault(_isSupportFlex);

var _serializeQuery = __webpack_require__(/*! @/common/serialize-query */ 48);

var _serializeQuery2 = _interopRequireDefault(_serializeQuery);

var _uniqueId = __webpack_require__(/*! @/common/unique-id */ 49);

var _uniqueId2 = _interopRequireDefault(_uniqueId);

var _config = __webpack_require__(/*! @/comment/config */ 3);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var $ = window.$;

function fetch(url) {
    return new Promise(function (resolve, reject) {
        $.ajax(url, {
            dataType: 'json',
            success: function success(data) {
                resolve(data);
            },
            error: function error(res) {
                reject(res);
            }
        });
    });
}

/**
 * 从原始数据中提取概要信息
 * @param {Object} data
 * @return {Object}
 */
function collectSummaryData(data) {
    return Object.assign({}, data.summary, {
        'specSatisfactionList': data.specSatisfactionList || null,
        'selectedTypeList': data.selectedTypeList,
        'count': data.count
    });
    // return Object.assgin(data.summary, data.specSatisfactionList)
    // return data.summary;
}

/**
 * 从原始数据中提取概要信息
 *  产品点评时，仅提取标签
 *  资源点评时，提取标签和资源列表，需转换数据格式
 * @param {Object} data
 * @return {Object}
 */
function collectTagData(data, isProduct) {
    var tagList = void 0,
        resourceList = void 0;
    if (isProduct) {
        tagList = (data.selectedTypeList || []).filter(function (item) {
            return item;
        });
    } else {
        tagList = (data.selectTypeList || []).filter(function (item) {
            return item;
        });
        if (Array.isArray(data.resourceList)) {
            resourceList = data.resourceList.filter(function (item) {
                return item;
            });
        }
    }
    if (tagList && tagList.length || resourceList && resourceList.length) {
        return {
            tag: tagList,
            resource: resourceList
        };
    } else {
        return null;
    }
}

/**
 * 从原始数据中提取概要信息
 * @param {Object} data
 * @return {Object} {current: 1, total: 1}
 */
function collectPaginationData(data, isProduct) {
    return {
        current: data.currentPage,
        total: isProduct ? data.pageNum : data.pageNums
    };
}

/**
 * 从原始数据中提取概要信息
 * @param {Object} data
 * @return {Object} {current: 1, total: 1}
 */
function collectListData(data, isProduct, selectedType) {
    if (data) {
        if (isProduct) {
            return data.list;
        } else {
            if (selectedType) {
                data.remarkList.forEach(function (item) {
                    item.type = _config.CATEGORY_MAP[selectedType];
                });
            }
            return data.remarkList;
        }
    }
    return null;
}

function isEmpty(data, isProduct) {
    var result = true;
    if (data && (typeof data === 'undefined' ? 'undefined' : _typeof(data)) === 'object') {
        if (isProduct) {
            result = !(Array.isArray(data.list) && data.list.length > 0);
        } else {
            result = !(Array.isArray(data.remarkList) && data.remarkList.length > 0);
        }
    }
    return result;
}

var Container = function (_Base) {
    _inherits(Container, _Base);

    function Container(options) {
        _classCallCheck(this, Container);

        // options = Object.assign({
        //     type: (options.type ? options.type : CATEGORY_PRODUCT)
        // }, options);
        var _this = _possibleConstructorReturn(this, (Container.__proto__ || Object.getPrototypeOf(Container)).call(this));

        if (!options.type) {
            options.type = _config.CATEGORY_PRODUCT;
        }
        _this.selectedType = options.type;
        _this.selectedTagId = 0;
        _this.selectedResourceId = 0;
        _this.selectedPage = undefined;
        _this.productId = options.productId;
        _this.endabled = !!_this.productId;
        _this.$el = $(options.el);
        _this.tabData = options.tab;

        if (_isSupportFlex2["default"]) {
            _this.$el.addClass('flex-supported');
        } else {
            _this.$el.addClass('flex-not-supported');
        }
        return _this;
    }

    _createClass(Container, [{
        key: 'init',
        value: function init() {
            var _this2 = this;

            if (!this.endabled) {
                return;
            }
            _get(Container.prototype.__proto__ || Object.getPrototypeOf(Container.prototype), 'init', this).call(this);
            // 创建子模块实例
            this.tab = (0, _tab2["default"])();
            this.summary = (0, _summary2["default"])();
            this.tag = (0, _tag2["default"])();
            this.list = (0, _list2["default"])();
            this.pagination = (0, _pagination2["default"])();
            this.contentError = (0, _contentError2["default"])();

            // 初始子模块
            this.tab.init();
            this.summary.init();
            this.tag.init();
            this.list.init();
            this.pagination.init();
            this.contentError.init();

            this.tab.on('change', function (type, index) {
                if (_this2.selectedType !== type) {
                    _this2.selectedType = type;
                    _this2.selectedTagId = 0;
                    _this2.selectedResourceId = 0;
                    _this2.selectedPage = undefined;
                    _this2.tab.update(type, index);
                    _this2.tag.changeMoreVisible(type !== _config.CATEGORY_PRODUCT);
                    _this2.fetchInitData();
                }
            });
            // 切换标签
            this.tag.on('change', function (id) {
                if (_this2.selectedTagId !== id) {
                    _this2.selectedTagId = id;
                    _this2.selectedPage = undefined;
                    _this2.tag.update(id);
                    _this2.fetchDataByTag();
                }
            });
            this.tag.on('changeresource', function (id) {
                if (_this2.selectedResourceId !== id) {
                    _this2.selectedResourceId = id;
                    _this2.selectedPage = undefined;
                    _this2.tag.updateResource(id);
                    _this2.fetchDataByTag();
                }
            });
            // 切换分页
            this.pagination.on('change', function (page) {
                if (_this2.selectedPage !== page) {
                    $('html,body').animate({ scrollTop: _this2.tag.$el.offset().top - 45 }, 10);
                    _this2.selectedPage = page;
                    _this2.fetchDataByPagination();
                }
            });

            // 初始view框架
            this.initFrameView();
            this.$body = this.$('.J_commentBody');
            // 优先加载tab
            this.tab.load(this.tabData);
            this.tab.mount(this.$body);
            this.tag.changeMoreVisible(this.selectedType !== _config.CATEGORY_PRODUCT);
        }

        /**
         * 初始视图框架
         */

    }, {
        key: 'initFrameView',
        value: function initFrameView() {
            this.$el.append(this.ejs.compile(_frame2["default"])());
        }
    }, {
        key: 'getProductFlag',
        value: function getProductFlag() {
            return this.selectedType === _config.CATEGORY_PRODUCT;
        }

        // ******************** 初始操作 ***********************
        /**
         * 初始加载
         *  隐藏loading
         *  加载初始数据
         */

    }, {
        key: 'load',
        value: function load() {
            if (!this.endabled) {
                return;
            }
            this.hideInitLoading();
            this.fetchInitData();
        }

        /**
         * 获取初始点评数据
         *  卸载tab之外的模块
         *  展示loading
         *  从服务端获取数据
         * @return {Promise}
         */

    }, {
        key: 'fetchInitData',
        value: function fetchInitData() {
            var _this3 = this;

            if (!this.endabled) {
                return;
            }
            // 加载子模块视图
            this.summary.unmount();
            this.tag.unmount();
            this.list.unmount();
            this.pagination.unmount();
            this.contentError.unmount();
            this.showLoading();
            return this._fetch().then(function (data) {
                return _this3.loadInitData(data);
            })["catch"](function (err) {
                if (err !== _config.ERROR_FETCH_ABORT) {
                    _this3.showInitError(err);
                }
            });
        }

        /**
         * 加载初始数据
         *  加载概要数据
         *  加载标签数据
         *  加载列表数据
         *  加载分页数据
         *  隐藏loading
         *  加载子模块视图
         * @param {Object} data
         */

    }, {
        key: 'loadInitData',
        value: function loadInitData(data) {
            _get(Container.prototype.__proto__ || Object.getPrototypeOf(Container.prototype), 'load', this).call(this, data);
            var isProduct = this.getProductFlag();
            this.summary.load(collectSummaryData(data));
            this.tag.load(collectTagData(data, isProduct), this.selectedType);
            this.list.load(collectListData(data, isProduct, this.selectedType));
            this.pagination.load(collectPaginationData(data, isProduct));
            this.hideLoading();
            this.mount();
        }

        /**
         * 加载视图
         *  加载tab视图
         *  若为产品点评，加载概要视图
         *  加载标签视图
         *  加载列表视图
         *  加载分页视图
         */

    }, {
        key: 'mount',
        value: function mount() {
            if (!this.endabled) {
                return;
            }
            // 加载子模块视图
            if (this.selectedType === _config.CATEGORY_PRODUCT) {
                this.summary.mount(this.$body);
            }
            this.tag.mount(this.$body, this.selectedType);
            this.list.mount(this.$body);
            this.pagination.mount(this.$body);
        }
    }, {
        key: 'showInitError',
        value: function showInitError() {
            _get(Container.prototype.__proto__ || Object.getPrototypeOf(Container.prototype), 'load', this).call(this, null);
            this.hideLoading();
            if (this.getProductFlag()) {
                this.showSummaryError();
                this.showContentError('*本产品暂无点评信息，游客出游归来可发表点评，您的出游评价是我们提升服务的依据。', true);
            } else {
                this.showContentError();
            }
        }
    }, {
        key: 'showSummaryError',
        value: function showSummaryError() {
            this.summary.showError();
            this.summary.mount(this.$body);
        }

        // ******************** 切换标签操作 ***********************

        /**
         * 切换标签时获取点评数据
         *  卸载分页视图
         *  展示列表loading
         *  从服务端获取数据
         * @return {Promise}
         */

    }, {
        key: 'fetchDataByTag',
        value: function fetchDataByTag() {
            var _this4 = this;

            this.contentError.unmount();
            this.pagination.unmount();
            this.showListLoading();
            return this._fetch().then(function (data) {
                return _this4.loadDataByTag(data);
            })["catch"](function (err) {
                if (err === _config.ERROR_DATA_EMPTY) {
                    _this4.showContentError('暂无点评信息');
                } else if ((typeof err === 'undefined' ? 'undefined' : _typeof(err)) === 'object') {
                    _this4.showContentError('暂无点评信息');
                    _this4.tag.load(collectTagData(err, _this4.getProductFlag()), _this4.selectedType);
                }
            });
        }

        /**
         * 切换标签时加载数据
         *  加载标签数据
         *  加载列表数据
         *  加载分页数据
         *  加载分页视图
         *  隐藏列表loading
         *  加载子模块视图
         * @param {Object} data
         */

    }, {
        key: 'loadDataByTag',
        value: function loadDataByTag(data) {
            var isProduct = this.getProductFlag();
            _get(Container.prototype.__proto__ || Object.getPrototypeOf(Container.prototype), 'load', this).call(this, data);
            this.hideListLoading();
            this.tag.load(collectTagData(data, isProduct), this.selectedType);
            this.list.load(collectListData(data, isProduct, this.selectedType));
            this.pagination.load(collectPaginationData(data, isProduct));
            this.list.mount(this.$body);
            this.pagination.mount(this.$body);
        }
    }, {
        key: 'showContentError',
        value: function showContentError(err, float) {
            _get(Container.prototype.__proto__ || Object.getPrototypeOf(Container.prototype), 'load', this).call(this, null);
            this.hideListLoading();
            this.list.unmount();
            this.contentError.setText(err, float);
            this.contentError.mount(this.$body);
        }

        // ******************** 切换标签操作 ***********************

        /**
         * 切换分页时获取点评数据
         *  展示列表loading
         *  从服务端获取数据
         * @return {Promise}
         */

    }, {
        key: 'fetchDataByPagination',
        value: function fetchDataByPagination() {
            var _this5 = this;

            this.showListLoading();
            return this._fetch().then(function (data) {
                return _this5.loadDataByPagination(data);
            });
        }

        /**
         * 切换分页时加载数据
         *  加载标签数据
         *  加载列表数据
         *  加载分页数据
         *  加载分页视图
         *  隐藏列表loading
         *  加载子模块视图
         * @param {Object} data
         */

    }, {
        key: 'loadDataByPagination',
        value: function loadDataByPagination(data) {
            var isProduct = this.getProductFlag();
            _get(Container.prototype.__proto__ || Object.getPrototypeOf(Container.prototype), 'load', this).call(this, data);
            this.list.load(collectListData(data, isProduct, this.selectedType));
            // this.pagination.load(collectPaginationData(data, isProduct));
            this.hideListLoading();
        }

        // ******************** 拉取数据操作 ***********************

        /**
         * 从服务端获取点评数据
         * 根据当前展示的点评类型，获取对应类型的点评数据
         */

    }, {
        key: '_fetch',
        value: function _fetch() {
            if (this.selectedType === _config.CATEGORY_PRODUCT) {
                return this.fetchProductComment();
            } else {
                return this.fetchResourceComment();
            }
        }

        /**
         * 从服务端获取产品点评数据
         */

    }, {
        key: 'fetchProductComment',
        value: function fetchProductComment() {
            var _this6 = this;

            var uid = this._productUid = (0, _uniqueId2["default"])();
            return fetch((0, _serializeQuery2["default"])({
                page: this.selectedPage,
                productId: this.productId,
                selectedType: this.selectedTagId
            }, _config.URL_PRODUCT_COMMENT)).then(function (response) {
                if (_this6._productUid === uid) {
                    return response;
                } else {
                    return Promise.reject(_config.ERROR_FETCH_ABORT);
                }
            }).then(function (res) {
                if (res && res.success && res.data && !isEmpty(res.data, true)) {
                    return res.data;
                } else {
                    return Promise.reject(_config.ERROR_DATA_EMPTY);
                }
            });
        }

        /**
         * 从服务端获取资源点评数据
         */

    }, {
        key: 'fetchResourceComment',
        value: function fetchResourceComment() {
            var _this7 = this;

            var uid = this._resourceUid = (0, _uniqueId2["default"])();
            return fetch((0, _serializeQuery2["default"])({
                productId: this.productId,
                page: this.selectedPage,
                selectType: this.selectedTagId,
                resourceId: this.selectedResourceId,
                tabType: _config.CATEGORY_MAP[this.selectedType]
            }, _config.URL_RESOURCE_COMMENT)).then(function (response) {
                if (_this7._resourceUid === uid) {
                    return response;
                } else {
                    return Promise.reject(_config.ERROR_FETCH_ABORT);
                }
            }).then(function (res) {
                if (res && res.success && res.data && !isEmpty(res.data, false)) {
                    return res.data;
                } else {
                    if (res && res.success && res.data) {
                        return Promise.reject(res.data);
                    } else {
                        return Promise.reject(_config.ERROR_DATA_EMPTY);
                    }
                }
            });
        }
    }, {
        key: 'hideInitLoading',
        value: function hideInitLoading() {
            this.$('.J_commentFrame').removeClass('loading');
        }
    }, {
        key: 'showListLoading',
        value: function showListLoading() {
            this.list.clear();
            this.list.showLoading();
        }
    }, {
        key: 'hideListLoading',
        value: function hideListLoading() {
            this.list.hideLoading();
        }
    }, {
        key: 'getLoader',
        value: function getLoader() {
            if (!this.$loader) {
                this.$loader = $('<div />');
                this.$loader.addClass('comment-loading');
            }
            return this.$loader;
        }
    }, {
        key: 'showLoading',
        value: function showLoading() {
            if (this.$body) {
                this.$body.append(this.getLoader());
            }
        }
    }, {
        key: 'hideLoading',
        value: function hideLoading() {
            if (this.$loader) {
                this.$loader.remove();
            }
        }
    }]);

    return Container;
}(_Base3["default"]);

/***/ }),
/* 21 */
/*!*************************************************!*\
  !*** ./components/comment/container/index.scss ***!
  \*************************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),
/* 22 */
/*!************************************************!*\
  !*** ./components/comment/container/frame.ejs ***!
  \************************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

module.exports = "<div class=\"J_commentFrame comment-frame loading\">\n    <div class=\"comment-frame-head\">\n        <div class=\"title\">游客<br>点评</div>\n    </div>\n    <div class=\"J_commentBody comment-frame-body\"></div>\n</div>"

/***/ }),
/* 23 */
/*!***********************************************!*\
  !*** ../common/components/ejs/2.5.2/index.js ***!
  \***********************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/* eslint-disable */
/*
 * EJS Embedded JavaScript templates
 * Copyright 2112 Matthew Eernisse (mde@fleegix.org)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */



/**
 * @file Embedded JavaScript templating engine.
 * @author Matthew Eernisse <mde@fleegix.org>
 * @author Tiancheng "Timothy" Gu <timothygu99@gmail.com>
 * @project EJS
 * @license {@link http://www.apache.org/licenses/LICENSE-2.0 Apache License, Version 2.0}
 */

/**
 * EJS internal functions.
 *
 * Technically this "module" lies in the same file as {@link module:ejs}, for
 * the sake of organization all the private functions re grouped into this
 * module.
 *
 * @module ejs-internal
 * @private
 */

/**
 * Embedded JavaScript templating engine.
 *
 * @module ejs
 * @public
 */

Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.VERSION = exports.__express = exports.escapeXML = exports.clearCache = exports.renderFile = exports.render = exports.compile = exports.resolveInclude = exports.localsName = exports.cache = undefined;

var _path = __webpack_require__(/*! ./path */ 24);

var path = _interopRequireWildcard(_path);

var _utils = __webpack_require__(/*! ./utils */ 26);

var utils = _interopRequireWildcard(_utils);

var _package = __webpack_require__(/*! ./package */ 27);

var pkg = _interopRequireWildcard(_package);

function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj["default"] = obj; return newObj; } }

var fs = {};
// var path = require('./path');
// var utils = require('./utils');

var scopeOptionWarned = false;
var _VERSION_STRING = pkg.version;
var _DEFAULT_DELIMITER = '%';
var _DEFAULT_LOCALS_NAME = 'locals';
var _REGEX_STRING = '(<%%|%%>|<%=|<%-|<%_|<%#|<%|%>|-%>|_%>)';
var _OPTS = ['cache', 'filename', 'delimiter', 'scope', 'context', 'debug', 'compileDebug', 'client', '_with', 'root', 'rmWhitespace', 'strict', 'localsName'];
var _TRAILING_SEMCOL = /;\s*$/;
var _BOM = /^\uFEFF/;

/**
 * EJS template function cache. This can be a LRU object from lru-cache NPM
 * module. By default, it is {@link module:utils.cache}, a simple in-process
 * cache that grows continuously.
 *
 * @type {Cache}
 */

var cache = exports.cache = utils.cache;

/**
 * Name of the object containing the locals.
 *
 * This variable is overriden by {@link Options}`.localsName` if it is not
 * `undefined`.
 *
 * @type {String}
 * @public
 */

var localsName = exports.localsName = _DEFAULT_LOCALS_NAME;

/**
 * Get the path to the included file from the parent file path and the
 * specified path.
 *
 * @param {String}  name     specified path
 * @param {String}  filename parent file path
 * @param {Boolean} isDir    parent file path whether is directory
 * @return {String}
 */
var resolveInclude = exports.resolveInclude = function resolveInclude(name, filename, isDir) {
    var dirname = path.dirname;
    var extname = path.extname;
    var resolve = path.resolve;
    var includePath = resolve(isDir ? filename : dirname(filename), name);
    var ext = extname(name);
    if (!ext) {
        includePath += '.ejs';
    }
    return includePath;
};

/**
 * Get the path to the included file by Options
 *
 * @param  {String}  path    specified path
 * @param  {Options} options compilation options
 * @return {String}
 */
function getIncludePath(path, options) {
    var includePath;
    if (path.charAt(0) == '/') {
        includePath = resolveInclude(path.replace(/^\/*/, ''), options.root || '/', true);
    } else {
        if (!options.filename) {
            throw new Error('`include` use relative path requires the \'filename\' option.');
        }
        includePath = resolveInclude(path, options.filename);
    }
    return includePath;
}

/**
 * Get the template from a string or a file, either compiled on-the-fly or
 * read from cache (if enabled), and cache the template if needed.
 *
 * If `template` is not set, the file specified in `options.filename` will be
 * read.
 *
 * If `options.cache` is true, this function reads the file from
 * `options.filename` so it must be set prior to calling this function.
 *
 * @memberof module:ejs-internal
 * @param {Options} options   compilation options
 * @param {String} [template] template source
 * @return {(TemplateFunction|ClientFunction)}
 * Depending on the value of `options.client`, either type might be returned.
 * @static
 */

function handleCache(options, template) {
    var func;
    var filename = options.filename;
    var hasTemplate = arguments.length > 1;

    if (options.cache) {
        if (!filename) {
            throw new Error('cache option requires a filename');
        }
        func = cache.get(filename);
        if (func) {
            return func;
        }
        if (!hasTemplate) {
            template = fs.readFileSync(filename).toString().replace(_BOM, '');
        }
    } else if (!hasTemplate) {
        // istanbul ignore if: should not happen at all
        if (!filename) {
            throw new Error('Internal EJS error: no file name or template ' + 'provided');
        }
        template = fs.readFileSync(filename).toString().replace(_BOM, '');
    }
    func = compile(template, options);
    if (options.cache) {
        cache.set(filename, func);
    }
    return func;
}

/**
 * Get the template function.
 *
 * If `options.cache` is `true`, then the template is cached.
 *
 * @memberof module:ejs-internal
 * @param {String}  path    path for the specified file
 * @param {Options} options compilation options
 * @return {(TemplateFunction|ClientFunction)}
 * Depending on the value of `options.client`, either type might be returned
 * @static
 */

function includeFile(path, options) {
    var opts = utils.shallowCopy({}, options);
    opts.filename = getIncludePath(path, opts);
    return handleCache(opts);
}

/**
 * Get the JavaScript source of an included file.
 *
 * @memberof module:ejs-internal
 * @param {String}  path    path for the specified file
 * @param {Options} options compilation options
 * @return {Object}
 * @static
 */

function includeSource(path, options) {
    var opts = utils.shallowCopy({}, options);
    var includePath;
    var template;
    includePath = getIncludePath(path, opts);
    template = fs.readFileSync(includePath).toString().replace(_BOM, '');
    opts.filename = includePath;
    var templ = new Template(template, opts);
    templ.generateSource();
    return {
        source: templ.source,
        filename: includePath,
        template: template
    };
}

/**
 * Re-throw the given `err` in context to the `str` of ejs, `filename`, and
 * `lineno`.
 *
 * @implements RethrowCallback
 * @memberof module:ejs-internal
 * @param {Error}  err      Error object
 * @param {String} str      EJS source
 * @param {String} filename file name of the EJS file
 * @param {String} lineno   line number of the error
 * @static
 */

function rethrow(err, str, filename, lineno) {
    var lines = str.split('\n');
    var start = Math.max(lineno - 3, 0);
    var end = Math.min(lines.length, lineno + 3);
    // Error context
    var context = lines.slice(start, end).map(function (line, i) {
        var curr = i + start + 1;
        return (curr == lineno ? ' >> ' : '    ') + curr + '| ' + line;
    }).join('\n');

    // Alter exception message
    err.path = filename;
    err.message = (filename || 'ejs') + ':' + lineno + '\n' + context + '\n\n' + err.message;

    throw err;
}

/**
 * Copy properties in data object that are recognized as options to an
 * options object.
 *
 * This is used for compatibility with earlier versions of EJS and Express.js.
 *
 * @memberof module:ejs-internal
 * @param {Object}  data data object
 * @param {Options} opts options object
 * @static
 */

function cpOptsInData(data, opts) {
    _OPTS.forEach(function (p) {
        if (typeof data[p] != 'undefined') {
            opts[p] = data[p];
        }
    });
}

/**
 * Compile the given `str` of ejs into a template function.
 *
 * @param {String}  template EJS template
 *
 * @param {Options} opts     compilation options
 *
 * @return {(TemplateFunction|ClientFunction)}
 * Depending on the value of `opts.client`, either type might be returned.
 * @public
 */

var compile = exports.compile = function compile(template, opts) {
    var templ;

    // v1 compat
    // 'scope' is 'context'
    // FIXME: Remove this in a future version
    if (opts && opts.scope) {
        if (!scopeOptionWarned) {
            console.warn('`scope` option is deprecated and will be removed in EJS 3');
            scopeOptionWarned = true;
        }
        if (!opts.context) {
            opts.context = opts.scope;
        }
        delete opts.scope;
    }
    templ = new Template(template, opts);
    return templ.compile();
};

/**
 * Render the given `template` of ejs.
 *
 * If you would like to include options but not data, you need to explicitly
 * call this function with `data` being an empty object or `null`.
 *
 * @param {String}   template EJS template
 * @param {Object}  [data={}] template data
 * @param {Options} [opts={}] compilation and rendering options
 * @return {String}
 * @public
 */

var render = exports.render = function render(template, d, o) {
    var data = d || {};
    var opts = o || {};

    // No options object -- if there are optiony names
    // in the data, copy them to options
    if (arguments.length == 2) {
        cpOptsInData(data, opts);
    }

    return handleCache(opts, template)(data);
};

/**
 * Render an EJS file at the given `path` and callback `cb(err, str)`.
 *
 * If you would like to include options but not data, you need to explicitly
 * call this function with `data` being an empty object or `null`.
 *
 * @param {String}             path     path to the EJS file
 * @param {Object}            [data={}] template data
 * @param {Options}           [opts={}] compilation and rendering options
 * @param {RenderFileCallback} cb callback
 * @public
 */

var renderFile = exports.renderFile = function renderFile() {
    var args = Array.prototype.slice.call(arguments);
    var filename = args.shift();
    var cb = args.pop();
    var data = args.shift() || {};
    var opts = args.pop() || {};
    var result;

    // Don't pollute passed in opts obj with new vals
    opts = utils.shallowCopy({}, opts);

    // No options object -- if there are optiony names
    // in the data, copy them to options
    if (arguments.length == 3) {
        // Express 4
        if (data.settings && data.settings['view options']) {
            cpOptsInData(data.settings['view options'], opts);
        }
        // Express 3 and lower
        else {
                cpOptsInData(data, opts);
            }
    }
    opts.filename = filename;

    try {
        result = handleCache(opts)(data);
    } catch (err) {
        return cb(err);
    }
    return cb(null, result);
};

/**
 * Clear intermediate JavaScript cache. Calls {@link Cache#reset}.
 * @public
 */

var clearCache = exports.clearCache = function clearCache() {
    cache.reset();
};

function Template(text, opts) {
    opts = opts || {};
    var options = {};
    this.templateText = text;
    this.mode = null;
    this.truncate = false;
    this.currentLine = 1;
    this.source = '';
    this.dependencies = [];
    options.client = opts.client || true;
    options.escapeFunction = opts.escape || utils.escapeXML;
    options.compileDebug = opts.compileDebug !== false;
    options.debug = !!opts.debug;
    options.filename = opts.filename;
    options.delimiter = opts.delimiter || _DEFAULT_DELIMITER;
    options.strict = opts.strict || false;
    options.context = opts.context;
    options.cache = opts.cache || false;
    options.rmWhitespace = opts.rmWhitespace;
    options.root = opts.root;
    options.localsName = opts.localsName || localsName || _DEFAULT_LOCALS_NAME;

    if (options.strict) {
        options._with = false;
    } else {
        options._with = typeof opts._with != 'undefined' ? opts._with : true;
    }

    this.opts = options;

    this.regex = this.createRegex();
}

Template.modes = {
    EVAL: 'eval',
    ESCAPED: 'escaped',
    RAW: 'raw',
    COMMENT: 'comment',
    LITERAL: 'literal'
};

Template.prototype = {
    createRegex: function createRegex() {
        var str = _REGEX_STRING;
        var delim = utils.escapeRegExpChars(this.opts.delimiter);
        str = str.replace(/%/g, delim);
        return new RegExp(str);
    },

    compile: function compile() {
        var src;
        var fn;
        var opts = this.opts;
        var prepended = '';
        var appended = '';
        var escape = opts.escapeFunction;

        if (!this.source) {
            this.generateSource();
            prepended += '  var __output = [], __append = __output.push.bind(__output);' + '\n';
            if (opts._with !== false) {
                prepended += '  with (' + opts.localsName + ' || {}) {' + '\n';
                appended += '  }' + '\n';
            }
            appended += '  return __output.join("");' + '\n';
            this.source = prepended + this.source + appended;
        }

        if (opts.compileDebug) {
            src = 'var __line = 1' + '\n' + '  , __lines = ' + JSON.stringify(this.templateText) + '\n' + '  , __filename = ' + (opts.filename ? JSON.stringify(opts.filename) : 'undefined') + ';' + '\n' + 'try {' + '\n' + this.source + '} catch (e) {' + '\n' + '  rethrow(e, __lines, __filename, __line);' + '\n' + '}' + '\n';
        } else {
            src = this.source;
        }

        if (opts.debug) {
            console.log(src);
        }

        if (opts.client) {
            src = 'escape = escape || ' + escape.toString() + ';' + '\n' + src;
            if (opts.compileDebug) {
                src = 'rethrow = rethrow || ' + rethrow.toString() + ';' + '\n' + src;
            }
        }

        if (opts.strict) {
            src = '"use strict";\n' + src;
        }

        try {
            fn = new Function(opts.localsName + ', escape, include, rethrow', src);
        } catch (e) {
            // istanbul ignore else
            if (e instanceof SyntaxError) {
                if (opts.filename) {
                    e.message += ' in ' + opts.filename;
                }
                e.message += ' while compiling ejs';
            }
            throw e;
        }

        if (opts.client) {
            fn.dependencies = this.dependencies;
            return function () {
                return fn.apply(opts.context, Array.from(arguments));
            };
        }

        // Return a callable function which will execute the function
        // created by the source-code, with the passed data as locals
        // Adds a local `include` function which allows full recursive include
        var returnedFn = function returnedFn(data) {
            var include = function include(path, includeData) {
                var d = utils.shallowCopy({}, data);
                if (includeData) {
                    d = utils.shallowCopy(d, includeData);
                }
                return includeFile(path, opts)(d);
            };
            return fn.apply(opts.context, [data || {}, escape, include, rethrow]);
        };
        returnedFn.dependencies = this.dependencies;
        return returnedFn;
    },

    generateSource: function generateSource() {
        var opts = this.opts;

        if (opts.rmWhitespace) {
            // Have to use two separate replace here as `^` and `$` operators don't
            // work well with `\r`.
            this.templateText = this.templateText.replace(/\r/g, '').replace(/^\s+|\s+$/gm, '');
        }

        // Slurp spaces and tabs before <%_ and after _%>
        this.templateText = this.templateText.replace(/[ \t]*<%_/gm, '<%_').replace(/_%>[ \t]*/gm, '_%>');

        var self = this;
        var matches = this.parseTemplateText();
        var d = this.opts.delimiter;

        if (matches && matches.length) {
            matches.forEach(function (line, index) {
                var opening;
                var closing;
                var include;
                var includeOpts;
                var includeObj;
                var includeSrc;
                // If this is an opening tag, check for closing tags
                // FIXME: May end up with some false positives here
                // Better to store modes as k/v with '<' + delimiter as key
                // Then this can simply check against the map
                if (line.indexOf('<' + d) === 0 // If it is a tag
                && line.indexOf('<' + d + d) !== 0) {
                    // and is not escaped
                    closing = matches[index + 2];
                    if (!(closing == d + '>' || closing == '-' + d + '>' || closing == '_' + d + '>')) {
                        throw new Error('Could not find matching close tag for "' + line + '".');
                    }
                }
                // HACK: backward-compat `include` preprocessor directives
                if (include = line.match(/^\s*include\s+(\S+)/)) {
                    opening = matches[index - 1];
                    // Must be in EVAL or RAW mode
                    if (opening && (opening == '<' + d || opening == '<' + d + '-' || opening == '<' + d + '_')) {
                        includeOpts = utils.shallowCopy({}, self.opts);
                        includeObj = includeSource(include[1], includeOpts);
                        if (self.opts.compileDebug) {
                            includeSrc = '    ; (function(){' + '\n' + '      var __line = 1' + '\n' + '      , __lines = ' + JSON.stringify(includeObj.template) + '\n' + '      , __filename = ' + JSON.stringify(includeObj.filename) + ';' + '\n' + '      try {' + '\n' + includeObj.source + '      } catch (e) {' + '\n' + '        rethrow(e, __lines, __filename, __line);' + '\n' + '      }' + '\n' + '    ; }).call(this)' + '\n';
                        } else {
                            includeSrc = '    ; (function(){' + '\n' + includeObj.source + '    ; }).call(this)' + '\n';
                        }
                        self.source += includeSrc;
                        self.dependencies.push(resolveInclude(include[1], includeOpts.filename));
                        return;
                    }
                }
                self.scanLine(line);
            });
        }
    },

    parseTemplateText: function parseTemplateText() {
        var str = this.templateText;
        var pat = this.regex;
        var result = pat.exec(str);
        var arr = [];
        var firstPos;

        while (result) {
            firstPos = result.index;

            if (firstPos !== 0) {
                arr.push(str.substring(0, firstPos));
                str = str.slice(firstPos);
            }

            arr.push(result[0]);
            str = str.slice(result[0].length);
            result = pat.exec(str);
        }

        if (str) {
            arr.push(str);
        }

        return arr;
    },

    scanLine: function scanLine(line) {
        var self = this;
        var d = this.opts.delimiter;
        var newLineCount = 0;

        function _addOutput() {
            if (self.truncate) {
                // Only replace single leading linebreak in the line after
                // -%> tag -- this is the single, trailing linebreak
                // after the tag that the truncation mode replaces
                // Handle Win / Unix / old Mac linebreaks -- do the \r\n
                // combo first in the regex-or
                line = line.replace(/^(?:\r\n|\r|\n)/, '');
                self.truncate = false;
            } else if (self.opts.rmWhitespace) {
                // Gotta be more careful here.
                // .replace(/^(\s*)\n/, '$1') might be more appropriate here but as
                // rmWhitespace already removes trailing spaces anyway so meh.
                line = line.replace(/^\n/, '');
            }
            if (!line) {
                return;
            }

            // Preserve literal slashes
            line = line.replace(/\\/g, '\\\\');

            // Convert linebreaks
            line = line.replace(/\n/g, '\\n');
            line = line.replace(/\r/g, '\\r');

            // Escape double-quotes
            // - this will be the delimiter during execution
            line = line.replace(/"/g, '\\"');
            self.source += '    ; __append("' + line + '")' + '\n';
        }

        newLineCount = line.split('\n').length - 1;

        switch (line) {
            case '<' + d:
            case '<' + d + '_':
                this.mode = Template.modes.EVAL;
                break;
            case '<' + d + '=':
                this.mode = Template.modes.ESCAPED;
                break;
            case '<' + d + '-':
                this.mode = Template.modes.RAW;
                break;
            case '<' + d + '#':
                this.mode = Template.modes.COMMENT;
                break;
            case '<' + d + d:
                this.mode = Template.modes.LITERAL;
                this.source += '    ; __append("' + line.replace('<' + d + d, '<' + d) + '")' + '\n';
                break;
            case d + d + '>':
                this.mode = Template.modes.LITERAL;
                this.source += '    ; __append("' + line.replace(d + d + '>', d + '>') + '")' + '\n';
                break;
            case d + '>':
            case '-' + d + '>':
            case '_' + d + '>':
                if (this.mode == Template.modes.LITERAL) {
                    _addOutput();
                }

                this.mode = null;
                this.truncate = line.indexOf('-') === 0 || line.indexOf('_') === 0;
                break;
            default:
                // In script mode, depends on type of tag
                if (this.mode) {
                    // If '//' is found without a line break, add a line break.
                    switch (this.mode) {
                        case Template.modes.EVAL:
                        case Template.modes.ESCAPED:
                        case Template.modes.RAW:
                            if (line.lastIndexOf('//') > line.lastIndexOf('\n')) {
                                line += '\n';
                            }
                    }
                    switch (this.mode) {
                        // Just executing code
                        case Template.modes.EVAL:
                            this.source += '    ; ' + line + '\n';
                            break;
                        // Exec, esc, and output
                        case Template.modes.ESCAPED:
                            this.source += '    ; __append(escape(' + line.replace(_TRAILING_SEMCOL, '').trim() + '))' + '\n';
                            break;
                        // Exec and output
                        case Template.modes.RAW:
                            this.source += '    ; __append(' + line.replace(_TRAILING_SEMCOL, '').trim() + ')' + '\n';
                            break;
                        case Template.modes.COMMENT:
                            // Do nothing
                            break;
                        // Literal <%% mode, append as raw output
                        case Template.modes.LITERAL:
                            _addOutput();
                            break;
                    }
                }
                // In string mode, just add the output
                else {
                        _addOutput();
                    }
        }

        if (self.opts.compileDebug && newLineCount) {
            this.currentLine += newLineCount;
            this.source += '    ; __line = ' + this.currentLine + '\n';
        }
    }
};

/**
 * Escape characters reserved in XML.
 *
 * This is simply an export of {@link module:utils.escapeXML}.
 *
 * If `markup` is `undefined` or `null`, the empty string is returned.
 *
 * @param {String} markup Input string
 * @return {String} Escaped string
 * @public
 * @func
 * */
var escapeXML = exports.escapeXML = utils.escapeXML;

/**
 * Express.js support.
 *
 * This is an alias for {@link module:ejs.renderFile}, in order to support
 * Express.js out-of-the-box.
 *
 * @func
 */

var __express = exports.__express = renderFile;

// Add require support
/* istanbul ignore else */
// if (require.extensions) {
//     require.extensions['.ejs'] = function (module, flnm) {
//         var filename = flnm || /* istanbul ignore next */ module.filename;
//         var options = {
//             filename: filename,
//             client: true
//         };
//         var template = fs.readFileSync(filename).toString();
//         var fn = exports.compile(template, options);
//         module._compile('module.exports = ' + fn.toString() + ';', filename);
//     };
// }

/**
 * Version of EJS.
 *
 * @readonly
 * @type {String}
 * @public
 */

var VERSION = exports.VERSION = _VERSION_STRING;

/* istanbul ignore if */
// if (typeof window != 'undefined') {
//     window.ejs = exports;
// }

/***/ }),
/* 24 */
/*!**********************************************!*\
  !*** ../common/components/ejs/2.5.2/path.js ***!
  \**********************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


var _process = __webpack_require__(/*! ./process.js */ 25);

function normalizeArray(parts, allowAboveRoot) {
    // if the path tries to go above the root, `up` ends up > 0
    var up = 0;
    for (var i = parts.length - 1; i >= 0; i--) {
        var last = parts[i];
        if (last === '.') {
            parts.splice(i, 1);
        } else if (last === '..') {
            parts.splice(i, 1);
            up++;
        } else if (up) {
            parts.splice(i, 1);
            up--;
        }
    }

    // if the path is allowed to go above the root, restore leading ..s
    if (allowAboveRoot) {
        for (; up--; up) {
            parts.unshift('..');
        }
    }

    return parts;
}

// Split a filename into [root, dir, basename, ext], unix version
// 'root' is just a slash, or nothing.
/* eslint-disable */
// Copyright Joyent, Inc. and other Node contributors.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to permit
// persons to whom the Software is furnished to do so, subject to the
// following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
// NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.

// resolves . and .. elements in a path array with directory names there
// must be no slashes, empty elements, or device names (c:\) in the array
// (so also no leading and trailing slashes - it does not distinguish
// relative and absolute paths)
var splitPathRe = /^(\/?|)([\s\S]*?)((?:\.{1,2}|[^\/]+?|)(\.[^.\/]*|))(?:[\/]*)$/;
var splitPath = function splitPath(filename) {
    return splitPathRe.exec(filename).slice(1);
};

// path.resolve([from ...], to)
// posix version
exports.resolve = function () {
    var resolvedPath = '',
        resolvedAbsolute = false;

    for (var i = arguments.length - 1; i >= -1 && !resolvedAbsolute; i--) {
        var path = i >= 0 ? arguments[i] : _process.process.cwd();

        // Skip empty and invalid entries
        if (typeof path !== 'string') {
            throw new TypeError('Arguments to path.resolve must be strings');
        } else if (!path) {
            continue;
        }

        resolvedPath = path + '/' + resolvedPath;
        resolvedAbsolute = path.charAt(0) === '/';
    }

    // At this point the path should be resolved to a full absolute path, but
    // handle relative paths to be safe (might happen when process.cwd() fails)

    // Normalize the path
    resolvedPath = normalizeArray(filter(resolvedPath.split('/'), function (p) {
        return !!p;
    }), !resolvedAbsolute).join('/');

    return (resolvedAbsolute ? '/' : '') + resolvedPath || '.';
};

// path.normalize(path)
// posix version
exports.normalize = function (path) {
    var isAbsolute = exports.isAbsolute(path),
        trailingSlash = substr(path, -1) === '/';

    // Normalize the path
    path = normalizeArray(filter(path.split('/'), function (p) {
        return !!p;
    }), !isAbsolute).join('/');

    if (!path && !isAbsolute) {
        path = '.';
    }
    if (path && trailingSlash) {
        path += '/';
    }

    return (isAbsolute ? '/' : '') + path;
};

// posix version
exports.isAbsolute = function (path) {
    return path.charAt(0) === '/';
};

// posix version
exports.join = function () {
    var paths = Array.prototype.slice.call(arguments, 0);
    return exports.normalize(filter(paths, function (p, index) {
        if (typeof p !== 'string') {
            throw new TypeError('Arguments to path.join must be strings');
        }
        return p;
    }).join('/'));
};

// path.relative(from, to)
// posix version
exports.relative = function (from, to) {
    from = exports.resolve(from).substr(1);
    to = exports.resolve(to).substr(1);

    function trim(arr) {
        var start = 0;
        for (; start < arr.length; start++) {
            if (arr[start] !== '') break;
        }

        var end = arr.length - 1;
        for (; end >= 0; end--) {
            if (arr[end] !== '') break;
        }

        if (start > end) return [];
        return arr.slice(start, end - start + 1);
    }

    var fromParts = trim(from.split('/'));
    var toParts = trim(to.split('/'));

    var length = Math.min(fromParts.length, toParts.length);
    var samePartsLength = length;
    for (var i = 0; i < length; i++) {
        if (fromParts[i] !== toParts[i]) {
            samePartsLength = i;
            break;
        }
    }

    var outputParts = [];
    for (var i = samePartsLength; i < fromParts.length; i++) {
        outputParts.push('..');
    }

    outputParts = outputParts.concat(toParts.slice(samePartsLength));

    return outputParts.join('/');
};

exports.sep = '/';
exports.delimiter = ':';

exports.dirname = function (path) {
    var result = splitPath(path),
        root = result[0],
        dir = result[1];

    if (!root && !dir) {
        // No dirname whatsoever
        return '.';
    }

    if (dir) {
        // It has a dirname, strip trailing slash
        dir = dir.substr(0, dir.length - 1);
    }

    return root + dir;
};

exports.basename = function (path, ext) {
    var f = splitPath(path)[2];
    // TODO: make this comparison case-insensitive on windows?
    if (ext && f.substr(-1 * ext.length) === ext) {
        f = f.substr(0, f.length - ext.length);
    }
    return f;
};

exports.extname = function (path) {
    return splitPath(path)[3];
};

function filter(xs, f) {
    if (xs.filter) return xs.filter(f);
    var res = [];
    for (var i = 0; i < xs.length; i++) {
        if (f(xs[i], i, xs)) res.push(xs[i]);
    }
    return res;
}

// String.prototype.substr - negative index don't work in IE8
var substr = 'ab'.substr(-1) === 'b' ? function (str, start, len) {
    return str.substr(start, len);
} : function (str, start, len) {
    if (start < 0) start = str.length + start;
    return str.substr(start, len);
};

/***/ }),
/* 25 */
/*!*************************************************!*\
  !*** ../common/components/ejs/2.5.2/process.js ***!
  \*************************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


// shim for using process in browser
/* eslint-disable */
var process = module.exports = {};
var queue = [];
var draining = false;

function drainQueue() {
    if (draining) {
        return;
    }
    draining = true;
    var currentQueue;
    var len = queue.length;
    while (len) {
        currentQueue = queue;
        queue = [];
        var i = -1;
        while (++i < len) {
            currentQueue[i]();
        }
        len = queue.length;
    }
    draining = false;
}

process.nextTick = function (fun) {
    queue.push(fun);
    if (!draining) {
        setTimeout(drainQueue, 0);
    }
};

process.title = 'browser';
process.browser = true;
process.env = {};
process.argv = [];
process.version = ''; // empty string to avoid regexp issues
process.versions = {};

function noop() {}

process.on = noop;
process.addListener = noop;
process.once = noop;
process.off = noop;
process.removeListener = noop;
process.removeAllListeners = noop;
process.emit = noop;

process.binding = function (name) {
    throw new Error('process.binding is not supported');
};

// TODO(shtylman)
process.cwd = function () {
    return '/';
};
process.chdir = function (dir) {
    throw new Error('process.chdir is not supported');
};
process.umask = function () {
    return 0;
};

/***/ }),
/* 26 */
/*!***********************************************!*\
  !*** ../common/components/ejs/2.5.2/utils.js ***!
  \***********************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/*
            * EJS Embedded JavaScript templates
            * Copyright 2112 Matthew Eernisse (mde@fleegix.org)
            *
            * Licensed under the Apache License, Version 2.0 (the "License");
            * you may not use this file except in compliance with the License.
            * You may obtain a copy of the License at
            *
            *         http://www.apache.org/licenses/LICENSE-2.0
            *
            * Unless required by applicable law or agreed to in writing, software
            * distributed under the License is distributed on an "AS IS" BASIS,
            * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
            * See the License for the specific language governing permissions and
            * limitations under the License.
            *
            */

/**
            * Private utility functions
            * @module utils
            * @private
            */


/* eslint-disable */

var regExpChars = /[|\\{}()[\]^$+*?.]/g;

/**
            * Escape characters reserved in regular expressions.
            *
            * If `string` is `undefined` or `null`, the empty string is returned.
            *
            * @param {String} string Input string
            * @return {String} Escaped string
            * @static
            * @private
            */
exports.escapeRegExpChars = function (string) {
    // istanbul ignore if
    if (!string) {
        return '';
    }
    return String(string).replace(regExpChars, '\\$&');
};

var _ENCODE_HTML_RULES = {
    '&': '&amp;',
    '<': '&lt;',
    '>': '&gt;',
    '"': '&#34;',
    "'": '&#39;'
},
    _MATCH_HTML = /[&<>\'"]/g;

function encode_char(c) {
    return _ENCODE_HTML_RULES[c] || c;
};

/**
            * Stringified version of constants used by {@link module:utils.escapeXML}.
            *
            * It is used in the process of generating {@link ClientFunction}s.
            *
            * @readonly
            * @type {String}
            */

var escapeFuncStr = 'var _ENCODE_HTML_RULES = {\n' + '      "&": "&amp;"\n' + '    , "<": "&lt;"\n' + '    , ">": "&gt;"\n' + '    , \'"\': "&#34;"\n' + '    , "\'": "&#39;"\n' + '    }\n' + '  , _MATCH_HTML = /[&<>\'"]/g;\n' + 'function encode_char(c) {\n' + '  return _ENCODE_HTML_RULES[c] || c;\n' + '};\n';

/**
            * Escape characters reserved in XML.
            *
            * If `markup` is `undefined` or `null`, the empty string is returned.
            *
            * @implements {EscapeCallback}
            * @param {String} markup Input string
            * @return {String} Escaped string
            * @static
            * @private
            */

// exports.escapeXML = function(markup) {
//     return markup == undefined
//         ? ''
//         : String(markup).replace(_MATCH_HTML, encode_char);
// };
exports.escapeXML = new Function('markup', '\n    return markup == undefined\n    ? \'\'\n    : String(markup).replace(_MATCH_HTML, encode_char);\n');

exports.escapeXML.toString = function () {
    return Function.prototype.toString.call(this) + ';\n' + escapeFuncStr;
};

/**
            * Copy all properties from one object to another, in a shallow fashion.
            *
            * @param  {Object} to   Destination object
            * @param  {Object} from Source object
            * @return {Object}      Destination object
            * @static
            * @private
            */
exports.shallowCopy = function (to, from) {
    from = from || {};
    for (var p in from) {
        to[p] = from[p];
    }
    return to;
};

/**
            * Simple in-process cache implementation. Does not implement limits of any
            * sort.
            *
            * @implements Cache
            * @static
            * @private
            */
exports.cache = {
    _data: {},
    set: function set(key, val) {
        this._data[key] = val;
    },
    get: function get(key) {
        return this._data[key];
    },
    reset: function reset() {
        this._data = {};
    }
};

/***/ }),
/* 27 */
/*!*************************************************!*\
  !*** ../common/components/ejs/2.5.2/package.js ***!
  \*************************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


/* eslint-disable */
module.exports = {
    "name": "ejs",
    "description": "Embedded JavaScript templates",
    "keywords": ["template", "engine", "ejs"],
    "version": "2.5.2",
    "author": "Matthew Eernisse <mde@fleegix.org> (http://fleegix.org)",
    "contributors": ["Timothy Gu <timothygu99@gmail.com> (https://timothygu.github.io)"],
    "license": "Apache-2.0",
    "main": "./lib/ejs.js",
    "repository": {
        "type": "git",
        "url": "git://github.com/mde/ejs.git"
    },
    "bugs": "https://github.com/mde/ejs/issues",
    "homepage": "https://github.com/mde/ejs",
    "dependencies": {},
    "devDependencies": {
        "browserify": "^13.0.1",
        "eslint": "^3.0.0",
        "istanbul": "~0.4.3",
        "jake": "^8.0.0",
        "jsdoc": "^3.4.0",
        "lru-cache": "^4.0.1",
        "mocha": "^3.0.2",
        "rimraf": "^2.2.8",
        "uglify-js": "^2.6.2"
    },
    "engines": {
        "node": ">=0.10.0"
    },
    "scripts": {
        "test": "mocha",
        "coverage": "istanbul cover node_modules/mocha/bin/_mocha",
        "doc": "rimraf out && jsdoc -c jsdoc.json lib/* docs/jsdoc/*",
        "devdoc": "rimraf out && jsdoc -p -c jsdoc.json lib/* docs/jsdoc/*"
    }
};

/***/ }),
/* 28 */
/*!*****************************************!*\
  !*** ./components/comment/tab/index.js ***!
  \*****************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _get = function get(object, property, receiver) { if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { return get(parent, property, receiver); } } else if ("value" in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } };

exports["default"] = function () {
    return new Tab();
};

__webpack_require__(/*! ./index.scss */ 29);

var _tab = __webpack_require__(/*! ./tab.ejs */ 30);

var _tab2 = _interopRequireDefault(_tab);

var _Base2 = __webpack_require__(/*! @/comment/Base */ 0);

var _Base3 = _interopRequireDefault(_Base2);

var _isSupportTransition = __webpack_require__(/*! @/common/is-support-transition */ 31);

var _isSupportTransition2 = _interopRequireDefault(_isSupportTransition);

var _config = __webpack_require__(/*! @/comment/config */ 3);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var $ = window.$;

var typeList = [_config.CATEGORY_PRODUCT, _config.CATEGORY_HOTEL, _config.CATEGORY_VIEWPORT];

var Tab = function (_Base) {
    _inherits(Tab, _Base);

    function Tab() {
        _classCallCheck(this, Tab);

        return _possibleConstructorReturn(this, (Tab.__proto__ || Object.getPrototypeOf(Tab)).apply(this, arguments));
    }

    _createClass(Tab, [{
        key: 'init',
        value: function init() {
            var self = this;
            _get(Tab.prototype.__proto__ || Object.getPrototypeOf(Tab.prototype), 'init', this).call(this);
            this.$el.addClass('comment-tab');

            this.$el.on('click', '.J_tabItem', function () {
                var index = $(this).index();
                var type = typeList[index];
                if (type) {
                    self.dispatch('change', type);
                }
            });
        }
    }, {
        key: 'load',
        value: function load(data) {
            _get(Tab.prototype.__proto__ || Object.getPrototypeOf(Tab.prototype), 'load', this).call(this, data);
            typeList = [];
            if (data.product) {
                typeList.push('CATEGORY_PRODUCT');
            }
            if (data.hotel) {
                typeList.push('CATEGORY_HOTEL');
            }
            if (data.scenic) {
                typeList.push('CATEGORY_VIEWPORT');
            }
        }
    }, {
        key: 'render',
        value: function render() {
            if (_get(Tab.prototype.__proto__ || Object.getPrototypeOf(Tab.prototype), 'isRendered', this).call(this)) {
                var html = this.ejs.compile(_tab2["default"])({
                    data: this.data
                });
                if (!(this.data.scenic || this.data.product || this.data.hotel)) {
                    this.$el.removeClass('comment-tab');
                };
                this.$el.append(html);
            }
        }
    }, {
        key: 'update',
        value: function update(type) {
            var index = typeList.indexOf(type);
            if (index !== -1) {
                this.$('.J_tabItem').removeClass('active').eq(index).addClass('active');
                this.updateBar();
            }
        }
    }, {
        key: 'updateBar',
        value: function updateBar() {
            if (!this.isRendered()) {
                return;
            }
            var $bar = this.$('.J_tabBar');
            var $active = this.$('.J_tabItem.active');
            var parentOffset = this.$el.offset();
            var activeOffset = $active.offset();
            if (parentOffset && activeOffset) {
                if (_isSupportTransition2["default"]) {
                    $bar.css({
                        left: activeOffset.left - parentOffset.left
                    });
                } else {
                    $bar.animate({
                        left: activeOffset.left - parentOffset.left
                    }, 200);
                }
            }
        }
    }]);

    return Tab;
}(_Base3["default"]);

;

/***/ }),
/* 29 */
/*!*******************************************!*\
  !*** ./components/comment/tab/index.scss ***!
  \*******************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),
/* 30 */
/*!****************************************!*\
  !*** ./components/comment/tab/tab.ejs ***!
  \****************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

module.exports = "<ul>\n    <% if (data.product) { %>\n        <li class=\"J_tabItem\">产品点评</li>\n    <% } %>\n    <% if (data.hotel) { %>\n        <li class=\"J_tabItem\" data-item=1>酒店点评</li>\n    <% } %>\n    <% if (data.scenic) { %>\n        <li class=\"J_tabItem\" data-item=2>景点点评</li>\n    <% } %>\n</ul>\n<% if (data.scenic || data.product || data.hotel) { %>\n<i class=\"J_tabBar bar\"></i>\n<% } %>"

/***/ }),
/* 31 */
/*!****************************************************!*\
  !*** ./components/common/is-support-transition.js ***!
  \****************************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
var cssNames = ['transition', 'wekitTransition', 'mozTransition'];

var cssValue = 'all';

function isSupportTransition() {
    var tempElement = document.createElement('div');
    cssNames.forEach(function (cssName) {
        tempElement.style[cssName] = cssValue;
    });

    return cssNames.some(function (cssName) {
        return !!tempElement.style[cssName];
    });
}

exports["default"] = isSupportTransition();

/***/ }),
/* 32 */
/*!*****************************************!*\
  !*** ./components/comment/tag/index.js ***!
  \*****************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _get = function get(object, property, receiver) { if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { return get(parent, property, receiver); } } else if ("value" in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } };

exports["default"] = function () {
    return new Tag();
};

__webpack_require__(/*! ./index.scss */ 33);

var _tag = __webpack_require__(/*! ./tag.ejs */ 34);

var _tag2 = _interopRequireDefault(_tag);

var _Base2 = __webpack_require__(/*! @/comment/Base */ 0);

var _Base3 = _interopRequireDefault(_Base2);

var _config = __webpack_require__(/*! @/comment/config */ 3);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var $ = window.$;

var Tag = function (_Base) {
    _inherits(Tag, _Base);

    function Tag() {
        _classCallCheck(this, Tag);

        return _possibleConstructorReturn(this, (Tag.__proto__ || Object.getPrototypeOf(Tag)).apply(this, arguments));
    }

    _createClass(Tag, [{
        key: 'init',
        value: function init() {
            var self = this;
            _get(Tag.prototype.__proto__ || Object.getPrototypeOf(Tag.prototype), 'init', this).call(this);
            this.overflowed = false;
            this.expanded = true;
            this.moreVisible = false;
            this.$el.addClass('comment-tag');

            this.$el.on('click', '.J_tagItem', function () {
                self.dispatch('change', $(this).data('id'));
            }).on('click', '.J_tagResourceItem', function () {
                self.dispatch('changeresource', $(this).data('id'));
            }).on('click', '.J_tagResourceMore', function () {
                self.toggleResource();
            });
        }
    }, {
        key: 'load',
        value: function load(data, type) {
            if (data) {
                this.selectedType = type;
                _get(Tag.prototype.__proto__ || Object.getPrototypeOf(Tag.prototype), 'load', this).call(this, data);
            }
        }
    }, {
        key: 'changeMoreVisible',
        value: function changeMoreVisible(state) {
            this.moreVisible = state === true;
        }
    }, {
        key: 'render',
        value: function render() {
            if (!this.isRendered()) {
                return;
            }
            this._render();
        }
    }, {
        key: '_render',
        value: function _render() {
            var html = this.ejs.compile(_tag2["default"])({
                data: this.data,
                moreText: this.getMoreExpandText()
            });
            this.$el.html(html);

            if (this.moreVisible) {
                var $list = this.$('.J_tagRresourceList');
                var $box = this.$('.J_tagRresourceBox');
                var $more = this.$('.J_tagResourceMore');

                if ($list.height() > $box.height()) {
                    this.overflowed = true;
                    this.expanded = false;
                    this.$('.J_tagRresourceGroup').removeClass('init').addClass('fold overflow');
                    this.$('.J_tagResourceMoreShadow').width($more.outerWidth());
                }
            }
        }
    }, {
        key: 'selectTag',
        value: function selectTag(id) {
            if (this.data) {
                (this.data.tag || []).forEach(function (item) {
                    if (item.selectedType === id) {
                        item.isSelected = true;
                    } else {
                        item.isSelected = false;
                    }
                });
            }
        }
    }, {
        key: 'selectResource',
        value: function selectResource(id) {
            if (this.data) {
                (this.data.resource || []).forEach(function (item) {
                    if (item.resourceId === id) {
                        item.isSelected = true;
                    } else {
                        item.isSelected = false;
                    }
                });
            }
        }
    }, {
        key: 'update',
        value: function update(id) {
            this.selectTag(id);
            this._render();
        }
    }, {
        key: 'updateResource',
        value: function updateResource(id) {
            this.selectResource(id);
            this._render();
        }
    }, {
        key: 'toggleResource',
        value: function toggleResource() {
            if (this.overflowed) {
                var $group = this.$('.J_tagRresourceGroup');
                if (this.expanded) {
                    this.expanded = false;
                    this.$('.J_tagResourceMoreText').text(this.getMoreExpandText());
                    $group.addClass('fold');
                } else {
                    this.expanded = true;
                    this.$('.J_tagResourceMoreText').text('收起');
                    $group.removeClass('fold');
                }
            }
        }
    }, {
        key: 'getMoreExpandText',
        value: function getMoreExpandText() {
            return this.selectedType === _config.CATEGORY_HOTEL ? '更多酒店' : '更多景点';
        }
    }]);

    return Tag;
}(_Base3["default"]);

/***/ }),
/* 33 */
/*!*******************************************!*\
  !*** ./components/comment/tag/index.scss ***!
  \*******************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),
/* 34 */
/*!****************************************!*\
  !*** ./components/comment/tag/tag.ejs ***!
  \****************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

module.exports = "<% if (data.resource && data.resource.length) { %>\n    <div class=\"J_tagRresourceGroup tag-group tag-resource init\">\n        <div class=\"J_tagResourceMore more\"><span class=\"J_tagResourceMoreText\"><%= moreText %></span> <i class=\"icon\"></i></div>\n        <div class=\"J_tagRresourceBox box\">\n            <div class=\"J_tagRresourceList list\">\n                <div class=\"J_tagResourceMoreShadow more-shadow\"></div>\n                <% data.resource.forEach(function(resource) { %>\n                    <% if (resource.isSelected) { %>\n                        <div class=\"J_tagResourceItem item active\" data-id=\"<%= resource.resourceId %>\">\n                            <%= resource.resourceName %><strong>（<%= resource.resourceSatisfaction %>%满意）</strong>\n                        </div>\n                    <% } %>\n                <% }) %>\n                <% data.resource.forEach(function(resource) { %>\n                    <% if (!resource.isSelected) { %>\n                        <div class=\"J_tagResourceItem item\" data-id=\"<%= resource.resourceId %>\">\n                            <%= resource.resourceName %><strong>（<%= resource.resourceSatisfaction %>%满意）</strong>\n                        </div>\n                    <% } %>\n                <% }) %>\n            </div>\n        </div>\n    </div>\n<% } %>\n<% if (data.tag && data.tag.length) { %>\n    <div class=\"tag-group\">\n        <div class=\"box\">\n            <div class=\"J_tagList list\">\n                <% data.tag.forEach(function(tag) { %>\n                    <% if (tag.selectedType == 16) { %>\n                        <div class=\"J_tagItem item<%= tag.isSelected ? ' active' : '' %>\" data-id=\"<%= tag.selectedType %>\"><%= tag.selectedName %></div>\n                    <% } else { %>\n                        <div class=\"J_tagItem item<%= tag.isSelected ? ' active' : '' %>\" data-id=\"<%= tag.selectedType %>\"><%= tag.selectedName %><%= '(' + tag.selectedAmount + ')'%></div>\n                    <% } %>\n                <% }) %>\n            </div>\n        </div>\n    </div>\n<% } %>"

/***/ }),
/* 35 */
/*!******************************************!*\
  !*** ./components/comment/list/index.js ***!
  \******************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _get = function get(object, property, receiver) { if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { return get(parent, property, receiver); } } else if ("value" in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } };

exports["default"] = function () {
    return new List();
};

var _Base2 = __webpack_require__(/*! @/comment/Base */ 0);

var _Base3 = _interopRequireDefault(_Base2);

var _card = __webpack_require__(/*! @/comment/card */ 36);

var _card2 = _interopRequireDefault(_card);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var $ = window.$;

var List = function (_Base) {
    _inherits(List, _Base);

    function List() {
        _classCallCheck(this, List);

        return _possibleConstructorReturn(this, (List.__proto__ || Object.getPrototypeOf(List)).apply(this, arguments));
    }

    _createClass(List, [{
        key: 'init',
        value: function init() {
            _get(List.prototype.__proto__ || Object.getPrototypeOf(List.prototype), 'init', this).call(this);
            this.children = [];
            this.$el.addClass('comment-list');
        }
    }, {
        key: 'load',
        value: function load(data) {
            var _this2 = this;

            this.clear();
            _get(List.prototype.__proto__ || Object.getPrototypeOf(List.prototype), 'load', this).call(this, data);
            this.data.forEach(function (item) {
                return _this2.addChild(item);
            });
        }
    }, {
        key: 'addChild',
        value: function addChild(data) {
            var child = (0, _card2["default"])();
            child.init();
            child.load(data);
            child.mount(this.$el);
            this.children.push(child);
        }
    }, {
        key: 'clear',
        value: function clear() {
            this.children.forEach(function (child) {
                return child.destroy();
            });
        }
    }, {
        key: 'getLoader',
        value: function getLoader() {
            if (!this.$loader) {
                this.$loader = $('<div />');
                this.$loader.addClass('comment-loading');
            }
            return this.$loader;
        }
    }, {
        key: 'showLoading',
        value: function showLoading() {
            if (this.$el) {
                this.$el.addClass('loading').append(this.getLoader());
            }
        }
    }, {
        key: 'hideLoading',
        value: function hideLoading() {
            if (this.$loader) {
                this.$el.removeClass('loading');
                this.$loader.remove();
            }
        }
    }]);

    return List;
}(_Base3["default"]);

/***/ }),
/* 36 */
/*!******************************************!*\
  !*** ./components/comment/card/index.js ***!
  \******************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _get = function get(object, property, receiver) { if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { return get(parent, property, receiver); } } else if ("value" in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } };

exports["default"] = function () {
    return new Card();
};

__webpack_require__(/*! ./index.scss */ 37);

var _gallery = __webpack_require__(/*! @/common/gallery */ 38);

var _Base2 = __webpack_require__(/*! @/comment/Base */ 0);

var _Base3 = _interopRequireDefault(_Base2);

var _card = __webpack_require__(/*! ./card.ejs */ 39);

var _card2 = _interopRequireDefault(_card);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }
// import {layer} from '@/common/layer/2.4.0/layer';


var $ = window.$;

var openImageViewer = window.openImageViewer || function () {};

function loadAllPicture($imgs, cb) {
    var amount = $imgs.length;
    var index = 0;

    function add() {
        index++;
        if (index === amount) {
            cb();
        }
    }
    if ($imgs && $imgs.length) {
        $imgs.forEach(function ($img) {
            var $new = new Image();

            $new.onload = function () {
                add();
                $new.onload = null;
                $new.onerror = null;
                $new = null;
            };
            $new.onerror = function () {
                add();
            };
            $new.src = $img.src;
        });
    } else {
        cb();
    }
}

var Card = function (_Base) {
    _inherits(Card, _Base);

    function Card() {
        _classCallCheck(this, Card);

        return _possibleConstructorReturn(this, (Card.__proto__ || Object.getPrototypeOf(Card)).apply(this, arguments));
    }

    _createClass(Card, [{
        key: 'init',
        value: function init() {
            _get(Card.prototype.__proto__ || Object.getPrototypeOf(Card.prototype), 'init', this).call(this);
            this.$el.addClass('comment-card');
        }
    }, {
        key: 'load',
        value: function load(data) {
            _get(Card.prototype.__proto__ || Object.getPrototypeOf(Card.prototype), 'load', this).call(this, data);
            this.bind();
        }
    }, {
        key: 'bind',
        value: function bind() {}
    }, {
        key: 'render',
        value: function render() {
            var self = this;
            if (_get(Card.prototype.__proto__ || Object.getPrototypeOf(Card.prototype), 'isRendered', this).call(this)) {
                this.$el.append(this.ejs.compile(_card2["default"])({
                    data: this.data,
                    resizeImage: this.resizeImage,
                    isResource: this.data.hasOwnProperty('remarkContent')
                }));
                this.$el.find('.comment-card-photos').each(function () {
                    var $gallery = $(this);
                    var $imgs = $gallery.find('img');
                    var photos = $imgs.map(function () {
                        return {
                            src: this.src,
                            name: ''
                        };
                    }).toArray();
                    $imgs.each(function (index) {
                        $(this).click(function () {
                            openImageViewer(photos, { index: index });
                        });
                    });
                    // layer.photos({
                    //     photos: $gallery,
                    //     shift: 5,
                    //     shade: 0.5
                    // });
                    loadAllPicture($imgs.toArray(), function () {
                        (0, _gallery.createGallery)($gallery, {
                            callBack: function callBack() {
                                self.updateSize();
                            }
                        });
                    });
                });
            }
        }
    }, {
        key: 'updateSize',
        value: function updateSize() {
            if (this.$el) {
                (this.$el.find('.comment-card-photos') || []).each(function () {
                    var $gallery = $(this);
                    var $next = $gallery.find('[data-role=next]');
                    if ($next.hasClass('disabled')) {
                        $gallery.addClass('comment-card-photos-float');
                    }
                });
            }
        }
    }, {
        key: 'resizeImage',
        value: function resizeImage(url, width, height, clip, stretch) {
            var pattern = /^(.*?)(_w\d+_h\d+_c\d+_t\d+)*\.([\w]+)$/;
            var res = void 0;
            width = width || 0;
            height = height || 0;
            clip = clip || 0;
            stretch = stretch || 0;
            res = pattern.exec(url);
            if (res) {
                return [res[1], '_', ['w' + width, 'h' + height, 'c' + clip, 't' + stretch].join('_'), '.', res[3]].join('');
            }
            return url;
        }
    }, {
        key: 'destroy',
        value: function destroy() {
            _get(Card.prototype.__proto__ || Object.getPrototypeOf(Card.prototype), 'destroy', this).call(this);
        }
    }]);

    return Card;
}(_Base3["default"]);

/***/ }),
/* 37 */
/*!********************************************!*\
  !*** ./components/comment/card/index.scss ***!
  \********************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),
/* 38 */
/*!********************************************!*\
  !*** ./components/common/gallery/index.js ***!
  \********************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/*
 *2017-10-11
 *新增入参callBack，在初始化完成之后执行。
 */


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var $ = window.$;
var instances = [];
var $win = $(window);

function collectChildren($container, selector) {
    return $container.find('[data-role=item]').toArray().map(function ($child) {
        $child = $($child);
        return {
            $element: $child
        };
    });
}

function updateChildren(children) {
    children.forEach(function (child) {
        child.width = child.$element.outerWidth(true);
        child.height = child.$element.outerHeight(true);
    });
}

function changeToCssPosition(position) {
    position = Object.assign({}, position);
    for (var property in position) {
        if (position.hasOwnProperty(property)) {
            position[property] = -position[property];
        }
    }
    return position;
}

var Gallery = function () {
    function Gallery($element, options) {
        _classCallCheck(this, Gallery);

        this.options = Object.assign({
            direction: 'h'
        }, options);
        this.children = null;
        this.size = null;
        this.prevDisabled = true;
        this.nextDisabled = true;
        this.position = {
            left: 0,
            top: 0
        };
        this.$container = $element;
        this.$list = null;
        this.$prev = null;
        this.$next = null;
        this.init();
        this.bind();
    }

    _createClass(Gallery, [{
        key: 'init',
        value: function init() {
            // let direction = this.options.direction;
            this.$list = this.$container.find('[data-role=list]');
            this.$prev = this.$container.find('[data-role=prev]');
            this.$next = this.$container.find('[data-role=next]');
            this.children = collectChildren(this.$list);
            this.updateSize();
            this.updateState();
            this.updateView();
            if (this.options.callBack && $.isFunction(this.options.callBack)) {
                this.options.callBack();
            }
        }
    }, {
        key: 'update',
        value: function update() {
            this.updateSize();
            this.move(0);
        }
    }, {
        key: 'updateSize',
        value: function updateSize() {
            var direction = this.options.direction;
            var sizeProperty = direction === 'h' ? 'width' : 'height';
            updateChildren(this.children);
            this.size = {
                width: this.$container.width(),
                height: this.$container.height()
            };
            this.$list[sizeProperty](this.children.reduce(function (length, child) {
                return child[sizeProperty] + length;
            }, 0));
            this.listSize = {
                width: this.$list.width(),
                height: this.$list.height()
            };
            if (this.listSize[sizeProperty] <= this.size[sizeProperty]) {
                this.$prev.hide();
                this.$next.hide();
                // 此处添加一个class，是因为在评论改版时候，适应新视图靠左展示
                // this.$container.addClass('comment-card-photos-float');
            } else {
                this.$prev.show();
                this.$next.show();
            }
        }
    }, {
        key: 'updatePosition',
        value: function updatePosition(moveDirection) {
            var direction = this.options.direction;
            var positionProperty = direction === 'h' ? 'left' : 'top';
            var sizeProperty = direction === 'h' ? 'width' : 'height';
            var nextPosition = 0;
            var originPosotion = this.position[positionProperty];
            if (moveDirection > 0) {
                originPosotion += this.size[sizeProperty];
            }
            this.children.some(function (child, childIndex) {
                var newPosition = nextPosition + child.width;
                if (moveDirection === 1 && originPosotion >= nextPosition && originPosotion < newPosition) {
                    nextPosition = newPosition;
                    return true;
                } else if (moveDirection === -1 && originPosotion > nextPosition && originPosotion <= newPosition) {
                    return true;
                } else {
                    nextPosition = newPosition;
                    return false;
                }
            });
            if (moveDirection > 0) {
                nextPosition -= this.size[sizeProperty];
            }
            if (this.listSize[sizeProperty] - nextPosition < this.size[sizeProperty]) {
                nextPosition = this.listSize[sizeProperty] - this.size[sizeProperty];
            }
            var position = {};
            position[positionProperty] = nextPosition;
            this.position = Object.assign({
                left: 0,
                top: 0
            }, position);
        }
    }, {
        key: 'updateState',
        value: function updateState() {
            var direction = this.options.direction;
            var positionProperty = direction === 'h' ? 'left' : 'top';
            var sizeProperty = direction === 'h' ? 'width' : 'height';
            var position = this.position;
            var size = this.size;
            var listSize = this.listSize;
            if (position[positionProperty] <= 0) {
                this.prevDisabled = true;
            } else {
                this.prevDisabled = false;
            }
            if (position[positionProperty] + size[sizeProperty] >= listSize[sizeProperty]) {
                this.nextDisabled = true;
            } else {
                this.nextDisabled = false;
            }
        }
    }, {
        key: 'updateView',
        value: function updateView() {
            if (this.prevDisabled) {
                this.$prev.addClass('disabled');
            } else {
                this.$prev.removeClass('disabled');
            }
            if (this.nextDisabled) {
                this.$next.addClass('disabled');
            } else {
                this.$next.removeClass('disabled');
            }
        }
    }, {
        key: 'bind',
        value: function bind() {
            var self = this;
            this.$prev.click(function () {
                if (self.prevDisabled) {
                    return;
                }
                self.move(-1);
            });
            this.$next.click(function () {
                if (self.nextDisabled) {
                    return;
                }
                self.move(1);
            });
        }
    }, {
        key: 'move',
        value: function move() {
            var direction = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 0;

            if (direction === 0) {
                this.$list.css(changeToCssPosition(this.position));
            } else {
                this.updatePosition(direction);
                this.updateState();
                this.updateView();
                this.$list.stop(true, true).animate(changeToCssPosition(this.position), 700);
            }
        }
    }]);

    return Gallery;
}();

function createGallery($element, options) {
    var gallery = new Gallery($element, options);
    instances.push(gallery);
    return gallery;
}

$win.on('resize', function () {
    instances.forEach(function (instance) {
        return instance.update();
    });
});

exports.createGallery = createGallery;

/***/ }),
/* 39 */
/*!******************************************!*\
  !*** ./components/comment/card/card.ejs ***!
  \******************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

module.exports = "<% if (data) { %>\n    <% if(data && data.length !== 0) { %>\n            <div class=\"comment-card-user\">\n                <div class=\"comment-card-user-vatar\">\n                    <img src=\"<%= resizeImage(data.userImage, 60, 60, 1) || 'http://img3.tuniucdn.com/img/20140811/usercenter_lxl/default.gif' %>\" alt=\"<%= data.realName || '' %>\">\n                </div>\n                <% if(data.realName) { %>\n                    <div class=\"comment-card-user-name\"><%= data.realName%></div>\n                <% } %>\n                <% if(isResource && data.userName) { %>\n                    <div class=\"comment-card-user-name\"><%= data.userName%></div>\n                <% } %>\n                <% if(data.travelTypeName) { %>\n                    <div class=\"comment-card-user-type\"><%= data.travelTypeName%></div>\n                <% } %>\n            </div>\n            <div class=\"comment-card-gift\">\n                <% if(data.moneyAmount || data.couponAmount) { %>\n                    <h3 class=\"comment-card-gift-title\"><ins class=\"icon\"></ins>点评赠送</h3>\n                    <% if(data.moneyAmount) { %>\n                        <div class=\"comment-card-gift-item\">返&nbsp;&nbsp;现<span>¥<%= data.moneyAmount%></span></div>\n                    <% } %>\n                    <% if(data.couponAmount) { %>\n                        <div class=\"comment-card-gift-item\">抵用券<span>¥<%= data.couponAmount%></span></div>\n                    <% } %>\n                <% } %>\n            </div>\n            <div class=\"comment-card-content <%= isResource ? 'comment-card-resource' : ''%>\">\n                <div class=\"comment-card-product\">\n                    <div class=\"comment-card-tags\">\n                        <% if(data.compName && !data.type) { %>\n                            <span class=\"text-orange\">总体评价：<%= data.compName %></span>\n                        <% } else if(data.compName && data.type) { %>\n                                <span class=\"text-orange\"><%= data.type == 1 ? '酒店评价：': '景点评价：'%><%= data.compName %></span>\n                         <% } %>   \n                        <% if(data.subGradeContents && data.subGradeContents.length !== 0) { %>\n                            <% data.subGradeContents.forEach(function(subGradeContent,index) { %>\n                                <% if(subGradeContent.notes && subGradeContent.dataIvalue) { %>\n                                    <span><%= subGradeContent.notes%>: <%= subGradeContent.dataIvalue%></span>\n                                <% } %>\n                            <% }) %>\n                        <% } %>\n                        <% if (isResource) {%>\n                            <% if (data.remarkTime) {%>\n                                <span class=\"right\">时间 ：<%= data.remarkTime%></span>\n                            <% } %>\n                            <% if (data.resourceName) {%>\n                                <span class=\"right\"><%= data.resourceName%></span>\n                            <% } %>\n                        <% } %>   \n                    </div>\n                    <% if(data.content) { %>\n                        <div class=\"comment-card-text\"><%= data.content%></div>\n                    <% } %>\n                    <% if(data.remarkContent) { %>\n                        <div class=\"comment-card-text\"><%= data.remarkContent%></div>\n                    <% } %>\n                    <% if(data.subRemark && data.subRemark.length !== 0) { %>\n                        <% data.subRemark.forEach(function(subRemark,index) { %>\n                            <div class=\"comment-card-detail\">\n                                <div class=\"comment-card-detail-title\"><%= subRemark.category%>：</div>\n                                <div class=\"comment-card-detail-content\"><%= subRemark.content%></div>\n                            </div> \n                        <% }) %>\n                    <% } %>\n                    <% if(data.images && data.images.length !== 0) { %>\n                        <div class=\"comment-card-photos\">\n                            <div class=\"comment-item-picture-button comment-item-picture-prev\" data-role=\"prev\"><i class=\"icon\"></i></div>\n                            <div class=\"comment-item-picture-button comment-item-picture-next\" data-role=\"next\"><i class=\"icon\"></i></div>\n                            <% if(data.images && data.images.length !== 0) { %>\n                            <div class=\"comment-card-photos-box\">\n                                <ul data-role=\"list\">\n                                    <% data.images.forEach(function(image,index){ %>\n                                        <li data-role=\"item\"><img src=\"<%= image.thumbUrl%>\" alt=\"\"></li>\n                                    <% }) %>\n                                </ul>\n                            </div>\n                            <% } %> \n                        </div>\n                    <% } %>\n                <% if(data.resourceContents && data.resourceContents.length !== 0) { %>\n                    <% data.resourceContents.forEach(function(resourceContent,index){ %>\n                        <div class=\"comment-card-resourceContent <%= index == 0 ? 'first' : ''%>\">\n                            <% if(resourceContent.resourceList && resourceContent.resourceList.length !== 0) { %>\n                                <% resourceContent.resourceList.forEach(function(resource,index){ %>\n                                    <div class=\"comment-card-resourceContent-header\">\n                                        <% if(resourceContent.resourceTypeName) { %>\n                                            <i class= \"<%= resourceContent.resourceTypeName == '酒店点评' ? 'hotel' : 'scenic'%>\"></i>\n                                            <% if (resource.resourceName) {%>\n                                                <span class=\"resourceContent-name\"><%= resource.resourceName%></span>\n                                            <% } %>\n                                             <% if (resource.feature) {%>\n                                                <span class=\"resourceContent-feature\"><%= resource.feature%></span>\n                                            <% } %>\n                                            <% if (resource.compName) {%>\n                                                <span class=\"resourceContent-evaluation\"><%= resource.compName%></span>\n                                            <% } %>\n                                        <% } %> \n                                    </div>\n                                    <div class=\"comment-card-text\"><%= resource.content%></div>\n                                    <% if(resource.images && resource.images.length !== 0) { %>\n                                        <div class=\"comment-card-photos\">\n                                            <div class=\"comment-item-picture-button comment-item-picture-prev\" data-role=\"prev\"><i class=\"icon\"></i></div>\n                                            <div class=\"comment-item-picture-button comment-item-picture-next\" data-role=\"next\"><i class=\"icon\"></i></div>\n                                            <% if(resource.images && resource.images.length !== 0) { %>\n                                                <div class=\"comment-card-photos-box\">\n                                                    <ul data-role=\"list\">\n                                                        <% resource.images.forEach(function(image,index){ %>\n                                                            <li data-role=\"item\"><img src=\"<%= resizeImage(image, 120, 120, 1, 0) %>\" alt=\"\"></li>\n                                                        <% }) %>\n                                                    </ul>\n                                                </div>\n                                            <% } %>     \n                                        </div> \n                                    <% } %>     \n                                <% }) %>\n                            <% } %>   \n                        </div>\n                    <% }) %>\n                <% } %>  \n                    <div class=\"comment-card-resource\"></div>\n                    <% if(data.remarkTime || data.remarkChannelName) { %>\n                        <div class=\"comment-card-datetime\">\n                            <% if(data.remarkTime && !isResource) { %>\n                                <%= data.remarkTime%>\n                            <% } %>\n                            <% if(data.remarkChannelName && data.remarkChannelName == '途牛电脑版') { %>\n                                来自途牛电脑版 \n                            <% } else if (data.remarkChannelName){ %>\n                                <a href=\"http://www.tuniu.com/static/mobile/\">来自<%= data.remarkChannelName%></a></div>\n                            <% } %>\n                        </div>\n                    <% } %>\n                <% if(data.replyContents && data.replyContents.length !== 0) { %>\n                    <% data.replyContents.forEach(function(replyContent,index){ %>\n                        <% if(replyContent.type == 2) { %>\n                            <div class=\"comment-card-reply-user\">\n                            <% if(replyContent.replyTime) { %>\n                                <h3><%= replyContent.replyTime%> 客户追评 ：</h3>\n                            <% } %>\n                            \n                            <% if(replyContent.content) { %>\n                                <p>\n                                <%= replyContent.content %>\n                                </p>\n                            <% } %>\n                            </div>\n                        <% } else if(replyContent.type == 1) { %>\n                        <div class=\"comment-card-reply-customer\">\n                            <i class=\"icon-customer\"></i>\n                            <% if(replyContent.replyTime) { %>\n                                <h3><%= replyContent.replyTime%> 客服回复 ：</h3>\n                            <% } %>\n                            <% if(replyContent.content) { %>\n                                <p>\n                                <%= replyContent.content %>\n                                </p>\n                            <% } %>                               \n                        </div>\n                        <% } %>\n                    <% }) %>\n                <% } %>   \n            </div>  \n    <% } %>\n<% } %>"

/***/ }),
/* 40 */
/*!************************************************!*\
  !*** ./components/comment/pagination/index.js ***!
  \************************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _get = function get(object, property, receiver) { if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { return get(parent, property, receiver); } } else if ("value" in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } };

exports["default"] = function () {
    return new Pagination();
};

var _Base2 = __webpack_require__(/*! @/comment/Base */ 0);

var _Base3 = _interopRequireDefault(_Base2);

var _index = __webpack_require__(/*! ./index.ejs */ 41);

var _index2 = _interopRequireDefault(_index);

__webpack_require__(/*! ./index.scss */ 42);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; } /**
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                * 点评分页
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                * create by wzx
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                */


var $ = window.$;

var Pagination = function (_Base) {
    _inherits(Pagination, _Base);

    function Pagination() {
        _classCallCheck(this, Pagination);

        return _possibleConstructorReturn(this, (Pagination.__proto__ || Object.getPrototypeOf(Pagination)).apply(this, arguments));
    }

    _createClass(Pagination, [{
        key: 'init',
        value: function init() {
            _get(Pagination.prototype.__proto__ || Object.getPrototypeOf(Pagination.prototype), 'init', this).call(this);
            this.$el.addClass('comment-pagination');
            this.bind();
        }
    }, {
        key: 'load',
        value: function load(data) {
            this.current = data.current || 1;
            this.total = data.total || 1;
            this.offset = 2;
            _get(Pagination.prototype.__proto__ || Object.getPrototypeOf(Pagination.prototype), 'load', this).call(this, data);
        }
    }, {
        key: 'bind',
        value: function bind() {
            var self = this;
            this.$el.on('click', '.pagination-prev', function () {
                self.change(self.current - 1);
            }).on('click', '.pagination-next', function () {
                self.change(self.current + 1);
            }).on('click', '.pagination-page', function () {
                self.change($(this).data('page'));
            }).on('click', '.pagination-button', function () {
                self.goPage();
            }).on('keyup', '.J_paginationInput', function (e) {
                if (e.keyCode === 13) {
                    self.goPage();
                }
            });
        }
    }, {
        key: 'goPage',
        value: function goPage() {
            var inputEle = this.$('.J_paginationInput');
            var pageNum = parseInt(inputEle.val() || 0, 10);

            if (pageNum && pageNum > 0 && pageNum <= this.total && pageNum !== this.current) {
                this.change(pageNum);
            } else {
                inputEle.val('').addClass('error').focus();
            }
        }
    }, {
        key: 'change',
        value: function change(page) {
            page = parseInt(page);
            if (page && this.current !== page && page > 0 && page <= this.total) {
                this.current = page;
                this.render();
                this.dispatch('change', page);
            }
        }
    }, {
        key: 'params',
        value: function params() {
            var current = this.current;
            var total = this.total;
            var offset = this.offset;
            var min = Math.max(current - offset, 1);
            var max = Math.min(total, min + offset * 2);

            min = Math.max(max - offset * 2, 1);

            return {
                current: current,
                total: total,
                min: min,
                max: max,
                more: max < total,
                last: max !== total
            };
        }
    }, {
        key: 'render',
        value: function render() {
            var paginationEl = this._PaginationRender()(this.params());
            this.$el.html(paginationEl);
        }
    }, {
        key: '_PaginationRender',
        value: function _PaginationRender() {
            return this.ejs.compile(_index2["default"]);
        }
    }]);

    return Pagination;
}(_Base3["default"]);

/***/ }),
/* 41 */
/*!*************************************************!*\
  !*** ./components/comment/pagination/index.ejs ***!
  \*************************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

module.exports = "<div class=\"pagination\">\n    <div class=\"pagination-box\">\n        <span class=\"pagination-item pagination-prev<%= current === 1 ? ' disabled' : '' %>\">&lt;</span>\n        <% if (min != 1) { %>\n            <span class=\"pagination-item pagination-page\" data-page=\"1\"> 1 </span>\n        <% } %>\n        <% if (min > 2) { %>\n            <span class=\"pagination-item pagination-more\">•••</span>\n        <% } %>\n        <% for (var page = min; page <= max; page++) { %>\n            <span class=\"pagination-item pagination-page<%= current === page ? ' active' : '' %>\"\n                <% if (current !== page) { %>data-page=\"<%= page %>\"<% } %>><%= page %></span>\n        <% } %>\n        <% if (more) { %>\n            <span class=\"pagination-item pagination-more\">•••</span>\n        <% } %>\n        <% if (last) { %>\n            <span class=\"pagination-item pagination-page\" data-page=\"<%= total %>\"><%= total %></span>\n        <% } %>\n        <span class=\"pagination-item pagination-next<%= current === total ? ' disabled' : '' %>\">&gt;</span>\n        <div class=\"pagination-item pagination-input\">到第<input type=\"text\" class=\"J_paginationInput\">页</div>\n        <a href=\"javascript:;\" class=\"pagination-item pagination-button\">确定</a>\n    </div>\n</div>"

/***/ }),
/* 42 */
/*!**************************************************!*\
  !*** ./components/comment/pagination/index.scss ***!
  \**************************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),
/* 43 */
/*!*********************************************!*\
  !*** ./components/comment/summary/index.js ***!
  \*********************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _get = function get(object, property, receiver) { if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { return get(parent, property, receiver); } } else if ("value" in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } };

exports["default"] = function () {
    return new Summary();
};

__webpack_require__(/*! ./index.scss */ 44);

var _index = __webpack_require__(/*! ./index.ejs */ 45);

var _index2 = _interopRequireDefault(_index);

var _Base2 = __webpack_require__(/*! @/comment/Base */ 0);

var _Base3 = _interopRequireDefault(_Base2);

var _config = __webpack_require__(/*! @/comment/config */ 3);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var Summary = function (_Base) {
    _inherits(Summary, _Base);

    function Summary() {
        _classCallCheck(this, Summary);

        return _possibleConstructorReturn(this, (Summary.__proto__ || Object.getPrototypeOf(Summary)).apply(this, arguments));
    }

    _createClass(Summary, [{
        key: 'init',
        value: function init() {
            _get(Summary.prototype.__proto__ || Object.getPrototypeOf(Summary.prototype), 'init', this).call(this);
            this.$el.addClass('comment-summary');
        }
    }, {
        key: 'render',
        value: function render() {
            if (_get(Summary.prototype.__proto__ || Object.getPrototypeOf(Summary.prototype), 'isRendered', this).call(this)) {
                var html = this.ejs.compile(_index2["default"])(Object.assign({
                    createUrl: _config.URL_CREATE_COMMENT
                }, {
                    data: this.data
                }));
                this.$el.html(html);
            }
        }
    }, {
        key: 'showError',
        value: function showError() {
            _get(Summary.prototype.__proto__ || Object.getPrototypeOf(Summary.prototype), 'load', this).call(this, null);
        }
    }]);

    return Summary;
}(_Base3["default"]);

/***/ }),
/* 44 */
/*!***********************************************!*\
  !*** ./components/comment/summary/index.scss ***!
  \***********************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),
/* 45 */
/*!**********************************************!*\
  !*** ./components/comment/summary/index.ejs ***!
  \**********************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

module.exports = "<% var gradeNames = '|导游服务|行程安排|餐饮住宿|旅行交通|' %>\n\n<% if (data) { %>\n    <% if(data.satisfaction) { %>\n        <div class=\"comment-satisfaction\">\n            <div class=\"title\">满意度</div>\n            <div class=\"value\"><strong><%= data.satisfaction%>%</strong></div>\n            <% if(data.peopleNum) { %>\n                <div class=\"count\">来自<%= data.totalNum%>名游客的点评</div>\n            <% } %>\n        </div>\n        <i class=\"separator\"></i>\n    <% } %>\n    <%  var lv1 =data.selectedTypeList.filter(function(item) { return item.selectedType == 20; })[0];\n        var lv2 =data.selectedTypeList.filter(function(item) { return item.selectedType == 21; })[0];\n        var lv3 =data.selectedTypeList.filter(function(item) { return item.selectedType == 22; })[0]; %>\n    <div class=\"percent\">\n        <div class=\"row\">\n            <div class=\"label\">满意(<%= lv1.selectedAmount %>)</div>\n            <div class=\"chart\"><i style=\"width: <%= (lv1.selectedAmount / data.count * 100).toFixed() %>%\"></i></div>\n            <div class=\"value\"><%= (lv1.selectedAmount / data.count * 100).toFixed() %>%</div>\n        </div>\n        <div class=\"row\">\n            <div class=\"label\">一般(<%= lv2.selectedAmount %>)</div>\n            <div class=\"chart\"><i style=\"width: <%= (lv2.selectedAmount / data.count * 100).toFixed() %>%\"></i></div>\n            <div class=\"value\"><%= (lv2.selectedAmount / data.count * 100).toFixed() %>%</div>\n        </div>\n        <div class=\"row\">\n            <div class=\"label\">不满意(<%= lv3.selectedAmount %>)</div>\n            <div class=\"chart\"><i style=\"width: <%= (lv3.selectedAmount / data.count * 100).toFixed() %>%\"></i></div>\n            <div class=\"value\"><%= (lv3.selectedAmount / data.count * 100).toFixed() %>%</div>\n        </div>\n    </div>\n    <div class=\"fraction\">\n        <% if (data.specSatisfactionList && data.specSatisfactionList.length) { %>\n            <% data.specSatisfactionList.forEach(function(item) { %>\n                <% if (item.specName && item.satisfactionScore) {%>\n                    <div class=\"item\">\n                        <%= item.specName %><span><strong><%= item.satisfactionScore %></strong>/5</span>\n                    </div>\n                <% } %>\n            <% }) %>\n        <% } %>\n    </div>\n\n    <i class=\"separator\"></i>\n\n    <div class=\"post\">\n        <% if (data.money || data.money === 0) { %>\n            <div class=\"desc\">\n                出游归来发点评返现金,<br>本产品已累计发放<strong><%= data.money %></strong>元\n            </div>\n        <% } %>\n        <a class=\"button\" href=\"<%= createUrl %>\" target=\"_blank\" mm=\"点击_详情区_游客点评_发表点评\">发表点评</a>\n    </div>\n\n<% } else { %>\n\n        <div class=\"empty\">\n\n            <div class=\"empty-content\">\n                本产品暂无点评，赶紧购买出游归来发表点评<br>\n                点评有惊喜，海量抵用券返现等你来拿\n            </div>\n\n            <div class=\"post\">\n                <div class=\"post-desc\">\n                    出游回来可点评产品\n                </div>\n                <div class=\"post-button\">\n                    <a href=\"<%= createUrl %>\" target=\"_blank\" mm=\"点击_详情区_游客点评_发表点评\">发表点评</a>\n                </div>\n            </div>\n        </div>\n    </div>\n<% } %>"

/***/ }),
/* 46 */
/*!***************************************************!*\
  !*** ./components/comment/content-error/index.js ***!
  \***************************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _get = function get(object, property, receiver) { if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { return get(parent, property, receiver); } } else if ("value" in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } };

exports["default"] = function () {
    return new ContentError();
};

__webpack_require__(/*! ./index.scss */ 47);

var _Base2 = __webpack_require__(/*! @/comment/Base */ 0);

var _Base3 = _interopRequireDefault(_Base2);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

// const $ = window.$;

var ContentError = function (_Base) {
    _inherits(ContentError, _Base);

    function ContentError() {
        _classCallCheck(this, ContentError);

        return _possibleConstructorReturn(this, (ContentError.__proto__ || Object.getPrototypeOf(ContentError)).apply(this, arguments));
    }

    _createClass(ContentError, [{
        key: 'init',
        value: function init() {
            _get(ContentError.prototype.__proto__ || Object.getPrototypeOf(ContentError.prototype), 'init', this).call(this);
            this.$el.addClass('comment-content-error');
        }

        // float 文案靠左显示

    }, {
        key: 'setText',
        value: function setText(msg, float) {
            this.$el.text(msg || '暂无点评信息，游客出游归来可发表点评，您的出游评价是我们提升服务的依据。');
            if (float) {
                this.$el.addClass('comment-content-error-left');
            }
        }
    }]);

    return ContentError;
}(_Base3["default"]);

/***/ }),
/* 47 */
/*!*****************************************************!*\
  !*** ./components/comment/content-error/index.scss ***!
  \*****************************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),
/* 48 */
/*!**********************************************!*\
  !*** ./components/common/serialize-query.js ***!
  \**********************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; };

exports["default"] = function (query, url) {
    if (!query || (typeof query === 'undefined' ? 'undefined' : _typeof(query)) !== 'object') {
        query = {};
    }
    query['stamp'] = (Math.random() + '' + Date.now()).replace(/\./g, '');
    var serializedParams = Object.keys(query).reduce(function (params, key) {
        if (query[key] !== undefined && query[key] !== null) {
            params.push(key + '=' + query[key]);
        }
        return params;
    }, []).join('&');

    if (url) {
        return url + (url.indexOf('?') === -1 ? '?' : '&') + serializedParams;
    } else {
        return serializedParams;
    }
};

/***/ }),
/* 49 */
/*!****************************************!*\
  !*** ./components/common/unique-id.js ***!
  \****************************************/
/*! no static exports found */
/*! all exports used */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

exports["default"] = function () {
    return Date.now() + '' + Math.random;
};

/***/ })
/******/ ]);