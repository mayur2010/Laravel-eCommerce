(()=>{"use strict";var e={3746:(e,n,t)=>{t.d(n,{O:()=>r,s:()=>i});var r=$.parseJSON(localStorage.getItem("MediaConfig"))||{},o={app_key:RV_MEDIA_CONFIG.random_hash?RV_MEDIA_CONFIG.random_hash:"21d06709fe1d3abcc0efddda89c4b279",request_params:{view_type:"tiles",filter:"everything",view_in:"all_media",sort_by:"created_at-desc",folder_id:0},hide_details_pane:!1,icons:{folder:"fa fa-folder"},actions_list:{basic:[{icon:"fa fa-eye",name:"Preview",action:"preview",order:0,class:"rv-action-preview"}],file:[{icon:"fa fa-link",name:"Copy link",action:"copy_link",order:0,class:"rv-action-copy-link"},{icon:"far fa-edit",name:"Rename",action:"rename",order:1,class:"rv-action-rename"},{icon:"fa fa-copy",name:"Make a copy",action:"make_copy",order:2,class:"rv-action-make-copy"}],user:[{icon:"fa fa-star",name:"Favorite",action:"favorite",order:2,class:"rv-action-favorite"},{icon:"fa fa-star",name:"Remove favorite",action:"remove_favorite",order:3,class:"rv-action-favorite"}],other:[{icon:"fa fa-download",name:"Download",action:"download",order:0,class:"rv-action-download"},{icon:"fa fa-trash",name:"Move to trash",action:"trash",order:1,class:"rv-action-trash"},{icon:"fa fa-eraser",name:"Delete permanently",action:"delete",order:2,class:"rv-action-delete"},{icon:"fa fa-undo",name:"Restore",action:"restore",order:3,class:"rv-action-restore"}]}};r.app_key&&r.app_key===o.app_key||(r=o),r.request_params.search="";var i=$.parseJSON(localStorage.getItem("RecentItems"))||[]},3341:(e,n,t)=>{t.d(n,{Z:()=>i});var r=t(3746);function o(e,n){for(var t=0;t<n.length;t++){var r=n[t];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}var i=function(){function e(){!function(e,n){if(!(e instanceof n))throw new TypeError("Cannot call a class as a function")}(this,e)}var n,t;return n=e,t=[{key:"getUrlParam",value:function(e){var n=arguments.length>1&&void 0!==arguments[1]?arguments[1]:null;n||(n=window.location.search);var t=new RegExp("(?:[?&]|&)"+e+"=([^&]+)","i"),r=n.match(t);return r&&r.length>1?r[1]:null}},{key:"asset",value:function(e){if("//"===e.substring(0,2)||"http://"===e.substring(0,7)||"https://"===e.substring(0,8))return e;var n="/"!==RV_MEDIA_URL.base_url.substr(-1,1)?RV_MEDIA_URL.base_url+"/":RV_MEDIA_URL.base_url;return"/"===e.substring(0,1)?n+e.substring(1):n+e}},{key:"showAjaxLoading",value:function(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:$(".rv-media-main");e.addClass("on-loading").append($("#rv_media_loading").html())}},{key:"hideAjaxLoading",value:function(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:$(".rv-media-main");e.removeClass("on-loading").find(".loading-wrapper").remove()}},{key:"isOnAjaxLoading",value:function(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:$(".rv-media-items");return e.hasClass("on-loading")}},{key:"jsonEncode",value:function(e){return void 0===e&&(e=null),JSON.stringify(e)}},{key:"jsonDecode",value:function(e,n){if(!e)return n;if("string"==typeof e){var t;try{t=$.parseJSON(e)}catch(e){t=n}return t}return e}},{key:"getRequestParams",value:function(){return window.rvMedia.options&&"modal"===window.rvMedia.options.open_in?$.extend(!0,r.O.request_params,window.rvMedia.options||{}):r.O.request_params}},{key:"setSelectedFile",value:function(e){void 0!==window.rvMedia.options?window.rvMedia.options.selected_file_id=e:r.O.request_params.selected_file_id=e}},{key:"getConfigs",value:function(){return r.O}},{key:"storeConfig",value:function(){localStorage.setItem("MediaConfig",e.jsonEncode(r.O))}},{key:"storeRecentItems",value:function(){localStorage.setItem("RecentItems",e.jsonEncode(r.s))}},{key:"addToRecent",value:function(e){e instanceof Array?_.each(e,(function(e){r.s.push(e)})):(r.s.push(e),this.storeRecentItems())}},{key:"getItems",value:function(){var e=[];return $(".js-media-list-title").each((function(n,t){var r=$(t),o=r.data()||{};o.index_key=r.index(),e.push(o)})),e}},{key:"getSelectedItems",value:function(){var e=[];return $(".js-media-list-title input[type=checkbox]:checked").each((function(n,t){var r=$(t).closest(".js-media-list-title"),o=r.data()||{};o.index_key=r.index(),e.push(o)})),e}},{key:"getSelectedFiles",value:function(){var e=[];return $(".js-media-list-title[data-context=file] input[type=checkbox]:checked").each((function(n,t){var r=$(t).closest(".js-media-list-title"),o=r.data()||{};o.index_key=r.index(),e.push(o)})),e}},{key:"getSelectedFolder",value:function(){var e=[];return $(".js-media-list-title[data-context=folder] input[type=checkbox]:checked").each((function(n,t){var r=$(t).closest(".js-media-list-title"),o=r.data()||{};o.index_key=r.index(),e.push(o)})),e}},{key:"isUseInModal",value:function(){return window.rvMedia&&window.rvMedia.options&&"modal"===window.rvMedia.options.open_in}},{key:"resetPagination",value:function(){RV_MEDIA_CONFIG.pagination={paged:1,posts_per_page:40,in_process_get_media:!1,has_more:!0}}}],null&&o(n.prototype,null),t&&o(n,t),Object.defineProperty(n,"prototype",{writable:!1}),e}()},99:(e,n,t)=>{t.d(n,{b:()=>s});var r=t(3746),o=t(3341),i=t(8081);function a(e,n){for(var t=0;t<n.length;t++){var r=n[t];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}var s=function(){function e(){!function(e,n){if(!(e instanceof n))throw new TypeError("Cannot call a class as a function")}(this,e)}var n,t;return n=e,t=[{key:"handleDropdown",value:function(){var n=_.size(o.Z.getSelectedItems());e.renderActions(),n>0?$(".rv-dropdown-actions").removeClass("disabled"):$(".rv-dropdown-actions").addClass("disabled")}},{key:"handlePreview",value:function(){var e=[];_.each(o.Z.getSelectedFiles(),(function(n){_.includes(["image","pdf","text","video"],n.type)&&(e.push({src:n.full_url}),r.s.push(n.id))})),_.size(e)>0?($.fancybox.open(e),o.Z.storeRecentItems()):this.handleGlobalAction("download")}},{key:"handleCopyLink",value:function(){var e="";_.each(o.Z.getSelectedFiles(),(function(n){_.isEmpty(e)||(e+="\n"),e+=n.full_url}));var n=$(".js-rv-clipboard-temp");n.data("clipboard-text",e),new Clipboard(".js-rv-clipboard-temp",{text:function(){return e}}),i.e.showMessage("success",RV_MEDIA_CONFIG.translations.clipboard.success,RV_MEDIA_CONFIG.translations.message.success_header),n.trigger("click")}},{key:"handleGlobalAction",value:function(n,t){var r=[];switch(_.each(o.Z.getSelectedItems(),(function(e){r.push({is_folder:e.is_folder,id:e.id,full_url:e.full_url})})),n){case"rename":$("#modal_rename_items").modal("show").find("form.rv-form").data("action",n);break;case"copy_link":e.handleCopyLink();break;case"preview":e.handlePreview();break;case"trash":$("#modal_trash_items").modal("show").find("form.rv-form").data("action",n);break;case"delete":$("#modal_delete_items").modal("show").find("form.rv-form").data("action",n);break;case"empty_trash":$("#modal_empty_trash").modal("show").find("form.rv-form").data("action",n);break;case"download":var a=RV_MEDIA_URL.download,s=0;_.each(o.Z.getSelectedItems(),(function(e){_.includes(o.Z.getConfigs().denied_download,e.mime_type)||(a+=(0===s?"?":"&")+"selected["+s+"][is_folder]="+e.is_folder+"&selected["+s+"][id]="+e.id,s++)})),a!==RV_MEDIA_URL.download?window.open(a,"_blank"):i.e.showMessage("error",RV_MEDIA_CONFIG.translations.download.error,RV_MEDIA_CONFIG.translations.message.error_header);break;default:e.processAction({selected:r,action:n},t)}}},{key:"processAction",value:function(e){var n=arguments.length>1&&void 0!==arguments[1]?arguments[1]:null;$.ajax({url:RV_MEDIA_URL.global_actions,type:"POST",data:e,dataType:"json",beforeSend:function(){o.Z.showAjaxLoading()},success:function(e){o.Z.resetPagination(),e.error?i.e.showMessage("error",e.message,RV_MEDIA_CONFIG.translations.message.error_header):i.e.showMessage("success",e.message,RV_MEDIA_CONFIG.translations.message.success_header),n&&n(e)},complete:function(){o.Z.hideAjaxLoading()},error:function(e){i.e.handleError(e)}})}},{key:"renderRenameItems",value:function(){var e=$("#rv_media_rename_item").html(),n=$("#modal_rename_items .rename-items").empty();_.each(o.Z.getSelectedItems(),(function(t){var r=e.replace(/__icon__/gi,t.icon||"fa fa-file").replace(/__placeholder__/gi,"Input file name").replace(/__value__/gi,t.name),o=$(r);o.data("id",t.id),o.data("is_folder",t.is_folder),o.data("name",t.name),n.append(o)}))}},{key:"renderActions",value:function(){var e=o.Z.getSelectedFolder().length>0,n=$("#rv_action_item").html(),t=0,r=$(".rv-dropdown-actions .dropdown-menu");r.empty();var i=$.extend({},!0,o.Z.getConfigs().actions_list);e&&(i.basic=_.reject(i.basic,(function(e){return"preview"===e.action})),i.file=_.reject(i.file,(function(e){return"copy_link"===e.action})),_.includes(RV_MEDIA_CONFIG.permissions,"folders.create")||(i.file=_.reject(i.file,(function(e){return"make_copy"===e.action}))),_.includes(RV_MEDIA_CONFIG.permissions,"folders.edit")||(i.file=_.reject(i.file,(function(e){return _.includes(["rename"],e.action)})),i.user=_.reject(i.user,(function(e){return _.includes(["rename"],e.action)}))),_.includes(RV_MEDIA_CONFIG.permissions,"folders.trash")||(i.other=_.reject(i.other,(function(e){return _.includes(["trash","restore"],e.action)}))),_.includes(RV_MEDIA_CONFIG.permissions,"folders.destroy")||(i.other=_.reject(i.other,(function(e){return _.includes(["delete"],e.action)}))),_.includes(RV_MEDIA_CONFIG.permissions,"folders.favorite")||(i.other=_.reject(i.other,(function(e){return _.includes(["favorite","remove_favorite"],e.action)}))));var a=o.Z.getSelectedFiles(),s=!1;_.each(a,(function(e){_.includes(["image","pdf","text","video"],e.type)&&(s=!0)})),s||(i.basic=_.reject(i.basic,(function(e){return"preview"===e.action}))),a.length>0&&(_.includes(RV_MEDIA_CONFIG.permissions,"files.create")||(i.file=_.reject(i.file,(function(e){return"make_copy"===e.action}))),_.includes(RV_MEDIA_CONFIG.permissions,"files.edit")||(i.file=_.reject(i.file,(function(e){return _.includes(["rename"],e.action)}))),_.includes(RV_MEDIA_CONFIG.permissions,"files.trash")||(i.other=_.reject(i.other,(function(e){return _.includes(["trash","restore"],e.action)}))),_.includes(RV_MEDIA_CONFIG.permissions,"files.destroy")||(i.other=_.reject(i.other,(function(e){return _.includes(["delete"],e.action)}))),_.includes(RV_MEDIA_CONFIG.permissions,"files.favorite")||(i.other=_.reject(i.other,(function(e){return _.includes(["favorite","remove_favorite"],e.action)})))),_.each(i,(function(e,i){_.each(e,(function(e,a){var s=!1;switch(o.Z.getRequestParams().view_in){case"all_media":_.includes(["remove_favorite","delete","restore"],e.action)&&(s=!0);break;case"recent":_.includes(["remove_favorite","delete","restore","make_copy"],e.action)&&(s=!0);break;case"favorites":_.includes(["favorite","delete","restore","make_copy"],e.action)&&(s=!0);break;case"trash":_.includes(["preview","delete","restore","rename","download"],e.action)||(s=!0)}if(!s){var c=n.replace(/__action__/gi,e.action||"").replace(/__icon__/gi,e.icon||"").replace(/__name__/gi,RV_MEDIA_CONFIG.translations.actions_list[i][e.action]||e.name);!a&&t&&(c='<li role="separator" class="divider"></li>'+c),r.append(c)}})),e.length>0&&t++}))}}],null&&a(n.prototype,null),t&&a(n,t),Object.defineProperty(n,"prototype",{writable:!1}),e}()},4669:(e,n,t)=>{t.d(n,{L:()=>a});var r=t(99),o=t(3341);function i(e,n){for(var t=0;t<n.length;t++){var r=n[t];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}var a=function(){function e(){!function(e,n){if(!(e instanceof n))throw new TypeError("Cannot call a class as a function")}(this,e)}var n,t;return n=e,t=[{key:"initContext",value:function(){jQuery().contextMenu&&($.contextMenu({selector:'.js-context-menu[data-context="file"]',build:function(){return{items:e._fileContextMenu()}}}),$.contextMenu({selector:'.js-context-menu[data-context="folder"]',build:function(){return{items:e._folderContextMenu()}}}))}},{key:"_fileContextMenu",value:function(){var e={preview:{name:"Preview",icon:function(e,n,t,r){return n.html('<i class="fa fa-eye" aria-hidden="true"></i> '+r.name),"context-menu-icon-updated"},callback:function(){r.b.handlePreview()}}};_.each(o.Z.getConfigs().actions_list,(function(n,t){_.each(n,(function(n){e[n.action]={name:n.name,icon:function(e,r,o,i){return r.html('<i class="'+n.icon+'" aria-hidden="true"></i> '+(RV_MEDIA_CONFIG.translations.actions_list[t][n.action]||i.name)),"context-menu-icon-updated"},callback:function(){$('.js-files-action[data-action="'+n.action+'"]').trigger("click")}}}))}));var n=[];switch(o.Z.getRequestParams().view_in){case"all_media":n=["remove_favorite","delete","restore"];break;case"recent":n=["remove_favorite","delete","restore","make_copy"];break;case"favorites":n=["favorite","delete","restore","make_copy"];break;case"trash":e={preview:e.preview,rename:e.rename,download:e.download,delete:e.delete,restore:e.restore}}_.each(n,(function(n){e[n]=void 0})),o.Z.getSelectedFolder().length>0&&(e.preview=void 0,e.copy_link=void 0,_.includes(RV_MEDIA_CONFIG.permissions,"folders.create")||(e.make_copy=void 0),_.includes(RV_MEDIA_CONFIG.permissions,"folders.edit")||(e.rename=void 0),_.includes(RV_MEDIA_CONFIG.permissions,"folders.trash")||(e.trash=void 0,e.restore=void 0),_.includes(RV_MEDIA_CONFIG.permissions,"folders.destroy")||(e.delete=void 0),_.includes(RV_MEDIA_CONFIG.permissions,"folders.favorite")||(e.favorite=void 0,e.remove_favorite=void 0));var t=o.Z.getSelectedFiles();t.length>0&&(_.includes(RV_MEDIA_CONFIG.permissions,"files.create")||(e.make_copy=void 0),_.includes(RV_MEDIA_CONFIG.permissions,"files.edit")||(e.rename=void 0),_.includes(RV_MEDIA_CONFIG.permissions,"files.trash")||(e.trash=void 0,e.restore=void 0),_.includes(RV_MEDIA_CONFIG.permissions,"files.destroy")||(e.delete=void 0),_.includes(RV_MEDIA_CONFIG.permissions,"files.favorite")||(e.favorite=void 0,e.remove_favorite=void 0));var i=!1;return _.each(t,(function(e){_.includes(["image","pdf","text","video"],e.type)&&(i=!0)})),i||(e.preview=void 0),e}},{key:"_folderContextMenu",value:function(){var n=e._fileContextMenu();return n.preview=void 0,n.copy_link=void 0,n}},{key:"destroyContext",value:function(){jQuery().contextMenu&&$.contextMenu("destroy")}}],null&&i(n.prototype,null),t&&i(n,t),Object.defineProperty(n,"prototype",{writable:!1}),e}()},8081:(e,n,t)=>{function r(e,n){for(var t=0;t<n.length;t++){var r=n[t];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}t.d(n,{e:()=>o});var o=function(){function e(){!function(e,n){if(!(e instanceof n))throw new TypeError("Cannot call a class as a function")}(this,e)}var n,t;return n=e,t=[{key:"showMessage",value:function(e,n){toastr.options={closeButton:!0,progressBar:!0,positionClass:"toast-bottom-right",onclick:null,showDuration:1e3,hideDuration:1e3,timeOut:1e4,extendedTimeOut:1e3,showEasing:"swing",hideEasing:"linear",showMethod:"fadeIn",hideMethod:"fadeOut"};var t="";switch(e){case"error":t=RV_MEDIA_CONFIG.translations.message.error_header;break;case"success":t=RV_MEDIA_CONFIG.translations.message.success_header}toastr[e](n,t)}},{key:"handleError",value:function(n){void 0===n.responseJSON||_.isArray(n.errors)?void 0!==n.responseJSON?void 0!==n.responseJSON.errors?422===n.status&&e.handleValidationError(n.responseJSON.errors):void 0!==n.responseJSON.message?e.showMessage("error",n.responseJSON.message):$.each(n.responseJSON,(function(n,t){$.each(t,(function(n,t){e.showMessage("error",t)}))})):e.showMessage("error",n.statusText):e.handleValidationError(n.responseJSON.errors)}},{key:"handleValidationError",value:function(n){var t="";$.each(n,(function(e,n){t+=n+"<br />",$('*[name="'+e+'"]').addClass("field-has-error"),$('*[name$="['+e+']"]').addClass("field-has-error")})),e.showMessage("error",t)}}],null&&r(n.prototype,null),t&&r(n,t),Object.defineProperty(n,"prototype",{writable:!1}),e}()}},n={};function t(r){var o=n[r];if(void 0!==o)return o.exports;var i=n[r]={exports:{}};return e[r](i,i.exports,t),i.exports}t.d=(e,n)=>{for(var r in n)t.o(n,r)&&!t.o(e,r)&&Object.defineProperty(e,r,{enumerable:!0,get:n[r]})},t.o=(e,n)=>Object.prototype.hasOwnProperty.call(e,n),(()=>{var e=t(3341),n=t(3746),r=t(4669);function o(e,n){if(!(e instanceof n))throw new TypeError("Cannot call a class as a function")}function i(e,n){for(var t=0;t<n.length;t++){var r=n[t];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}function a(e,n,t){return n&&i(e.prototype,n),t&&i(e,t),Object.defineProperty(e,"prototype",{writable:!1}),e}var s=function(){function n(){o(this,n)}return a(n,null,[{key:"editorSelectFile",value:function(n){var t=e.Z.getUrlParam("CKEditor")||e.Z.getUrlParam("CKEditorFuncNum");if(window.opener&&t){var r=_.first(n);window.opener.CKEDITOR.tools.callFunction(e.Z.getUrlParam("CKEditorFuncNum"),r.full_url),window.opener&&window.close()}}}]),n}(),c=a((function t(i,a){o(this,t),window.rvMedia=window.rvMedia||{};var s=$("body");a=$.extend(!0,{multiple:!0,type:"*",onSelectFiles:function(e,n){}},a);var c=function(t){t.preventDefault();var o=$(t.currentTarget);$("#rv_media_modal").modal("show"),window.rvMedia.options=a,window.rvMedia.options.open_in="modal",window.rvMedia.$el=o,n.O.request_params.filter="everything",e.Z.storeConfig();var i=window.rvMedia.$el.data("rv-media");void 0!==i&&i.length>0&&(i=i[0],window.rvMedia.options=$.extend(!0,window.rvMedia.options,i||{}),void 0!==i.selected_file_id?window.rvMedia.options.is_popup=!0:void 0!==window.rvMedia.options.is_popup&&(window.rvMedia.options.is_popup=void 0)),0===$("#rv_media_body .rv-media-container").length?$("#rv_media_body").load(RV_MEDIA_URL.popup,(function(n){n.error&&alert(n.message),$("#rv_media_body").removeClass("media-modal-loading").closest(".modal-content").removeClass("bb-loading"),$(document).find(".rv-media-container .js-change-action[data-type=refresh]").trigger("click"),"everything"!==e.Z.getRequestParams().filter&&$(".rv-media-actions .btn.js-rv-media-change-filter-group.js-filter-by-type").hide(),r.L.destroyContext(),r.L.initContext()})):$(document).find(".rv-media-container .js-change-action[data-type=refresh]").trigger("click")};"string"==typeof i?s.off("click",i).on("click",i,c):i.off("click").on("click",c)}));window.RvMediaStandAlone=c,$(".js-insert-to-editor").off("click").on("click",(function(n){n.preventDefault();var t=e.Z.getSelectedFiles();_.size(t)>0&&s.editorSelectFile(t)})),$.fn.rvMedia=function(t){var r=$(this);n.O.request_params.filter="everything",$(document).find(".js-insert-to-editor").prop("disabled","trash"===n.O.request_params.view_in),e.Z.storeConfig(),new c(r,t)}})()})();
