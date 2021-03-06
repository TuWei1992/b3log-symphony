<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="B3log ${symphonyLabel} - ${tagLabel}">
        <meta name="keywords" content="${trendTagsLabel},${coldTagsLabel}"/>
        <meta name="description" content="B3log ${symphonyLabel} ${trendTagsLabel},B3log ${symphonyLabel} ${coldTagsLabel}"/>
        </@head>
        <link type="text/css" rel="stylesheet" href="/css/index${miniPostfix}.css?${staticResourceVersion}" />
    </head>
    <body>
        <#include "header.ftl">
        <div class="main">
            <div class="wrapper fn-clear">
                <div class="content">
                    <div class="module">
                        <div class="module-header">  
                            <h2>
                                ${trendTagsLabel}
                            </h2>
                        </div>
                        <div class="module-panel list">
                            <ul class="tags-trend">
                                <#list trendTags as tag>
                                <li class="fn-clear<#if !tag_has_next> last</#if>"> 
                                    <#if tag.tagIconPath!="">
                                    <img class="avatar fn-left" src="${staticServePath}/images/tags/${tag.tagIconPath}" />
                                    </#if>
                                    <h2><a rel="tag" href="/tags/${tag.tagTitle?url('utf-8')}">${tag.tagTitle}</a></h2>
                                    <span class="ft-small fn-right">
                                        ${referenceLabel} ${tag.tagReferenceCount} &nbsp;
                                        ${cmtLabel} ${tag.tagCommentCount} 
                                    </span>
                                    <div class="content-reset">${tag.tagDescription}</div>
                                </li>
                                </#list>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="side">
                    <div class="module">
                        <div class="module-header">  
                            <h2>
                                ${coldTagsLabel}
                            </h2>
                        </div>
                        <div class="module-panel list">
                            <ul class="tags-cold">
                                <#list coldTags as tag>
                                <li class="fn-clear<#if !tag_has_next> last</#if>">
                                    <#if tag.tagIconPath!="">
                                    <img class="avatar fn-left" src="${staticServePath}/images/tags/${tag.tagIconPath}" />
                                    </#if>
                                    <h2><a rel="tag" href="/tags/${tag.tagTitle?url('utf-8')}">${tag.tagTitle}</a></h2>
                                    <span class="ft-small fn-right">
                                        ${referenceLabel} ${tag.tagReferenceCount} &nbsp;
                                        ${cmtLabel} ${tag.tagCommentCount} 
                                    </span>
                                    <div class="content-reset" style="width: 182px;">${tag.tagDescription}</div>
                                </li>
                                </#list>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <#include "footer.ftl">
    </body>
</html>
