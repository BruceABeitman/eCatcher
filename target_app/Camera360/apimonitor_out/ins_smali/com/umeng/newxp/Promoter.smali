.class public Lcom/umeng/newxp/Promoter;
.super Ljava/lang/Object;
.source "Promoter.java"
.field public static final LANDING_TYPE_BROWSER:I = 0x3
.field public static final LANDING_TYPE_DIRECT_DOWNLOAD:I = 0x1
.field public static final LANDING_TYPE_POPUP:I = 0x0
.field public static final LANDING_TYPE_WAP_WEBVIEW:I = 0x4
.field public static final LANDING_TYPE_WEBVIEW:I = 0x2
.field public static final REPORT_CLICK_TO_LAUNCH:I = 0x4
.field public static final REPORT_CLICK_TO_LAUNCH_DETAIL_PAGE:I = 0x5
.field public static final REPORT_CLICK_TO_PROMOTE:I = 0x2
.field public static final REPORT_DOWNLOAD:I = 0x1
.field public static final REPORT_DOWNLOAD_CLICK:I = 0x3
.field public static final REPORT_DOWNLOAD_CLICK_DIRECT:I = 0x7
.field public static final REPORT_FILTERED:I = -0x1
.field public static final REPORT_IMPRESSION:I
.field public ad_words:Ljava/lang/String;
.field public anim_in:I
.field public app_package_name:Ljava/lang/String;
.field public app_version_code:I
.field public app_version_name:Ljava/lang/String;
.field public bid:D
.field public category:I
.field public content_type:I
.field public description:Ljava/lang/String;
.field public display_type:I
.field public icon:Ljava/lang/String;
.field public img:Ljava/lang/String;
.field public landing_type:I
.field public new_tip:I
.field public price:Ljava/lang/String;
.field public promoter:Ljava/lang/String;
.field public provider:Ljava/lang/String;
.field public size:J
.field public text_color:Ljava/lang/String;
.field public text_font:Ljava/lang/String;
.field public text_size:Ljava/lang/String;
.field public title:Ljava/lang/String;
.field public url:Ljava/lang/String;
.field public url_in_app:Ljava/lang/String;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;
const/4 v0, 0x0
iput v0, p0, Lcom/umeng/newxp/Promoter;->new_tip:I
return-void
.end method
.method public static buildMockPromoter()Lcom/umeng/newxp/Promoter;
.registers 1
new-instance v0, Lcom/umeng/newxp/Promoter;
invoke-direct {v0}, Lcom/umeng/newxp/Promoter;-><init>()V
return-object v0
.end method
.method public static getPromoterFromJson(Lorg/json/JSONObject;)Lcom/umeng/newxp/Promoter;
.registers 7
const/4 v5, 0x0
if-nez p0, :cond_5
const/4 v0, 0x0
:goto_4
return-object v0
:cond_5
new-instance v0, Lcom/umeng/newxp/Promoter;
invoke-direct {v0}, Lcom/umeng/newxp/Promoter;-><init>()V
const-string/jumbo v1, "promoter"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->promoter:Ljava/lang/String;
const-string/jumbo v1, "category"
invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v1
iput v1, v0, Lcom/umeng/newxp/Promoter;->category:I
const-string/jumbo v1, "content_type"
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v1
iput v1, v0, Lcom/umeng/newxp/Promoter;->content_type:I
const-string/jumbo v1, "display_type"
invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v1
iput v1, v0, Lcom/umeng/newxp/Promoter;->display_type:I
const-string/jumbo v1, "img"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/umeng/common/util/g;->e(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_126
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->img:Ljava/lang/String;
:goto_43
const-string/jumbo v1, "anim_in"
invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v1
iput v1, v0, Lcom/umeng/newxp/Promoter;->anim_in:I
const-string/jumbo v1, "landing_type"
invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v1
iput v1, v0, Lcom/umeng/newxp/Promoter;->landing_type:I
const-string/jumbo v1, "text_size"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->text_size:Ljava/lang/String;
const-string/jumbo v1, "text_color"
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->text_color:Ljava/lang/String;
const-string/jumbo v1, "text_font"
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->text_font:Ljava/lang/String;
const-string/jumbo v1, "title"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;
const-string/jumbo v1, "provider"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->provider:Ljava/lang/String;
const-string/jumbo v1, "ad_words"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->ad_words:Ljava/lang/String;
const-string/jumbo v1, "description"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->description:Ljava/lang/String;
const-string/jumbo v1, "icon"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/umeng/common/util/g;->e(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_13f
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;
:goto_b5
const-string/jumbo v1, "url"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v2
invoke-static {v1}, Lcom/umeng/common/util/g;->e(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_158
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;
:goto_cf
const-string/jumbo v1, "new"
invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v1
iput v1, v0, Lcom/umeng/newxp/Promoter;->new_tip:I
const-string/jumbo v1, "app_version_code"
invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v1
iput v1, v0, Lcom/umeng/newxp/Promoter;->app_version_code:I
const-string/jumbo v1, "url_in_app"
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->url_in_app:Ljava/lang/String;
const-string/jumbo v1, "size"
const-wide/16 v2, 0x0
invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
move-result-wide v1
iput-wide v1, v0, Lcom/umeng/newxp/Promoter;->size:J
const-string/jumbo v1, "app_package_name"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;
const-string/jumbo v1, "app_version_name"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->app_version_name:Ljava/lang/String;
const-string/jumbo v1, "price"
const-string/jumbo v2, ""
invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->price:Ljava/lang/String;
const-string/jumbo v1, "bid"
const-wide/16 v2, 0x0
invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v1
iput-wide v1, v0, Lcom/umeng/newxp/Promoter;->bid:D
goto/16 :goto_4
:cond_126
new-instance v2, Ljava/lang/StringBuilder;
sget-object v3, Lcom/umeng/newxp/common/ExchangeConstants;->BASE_URL_LIST:[Ljava/lang/String;
aget-object v3, v3, v5
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->img:Ljava/lang/String;
goto/16 :goto_43
:cond_13f
new-instance v2, Ljava/lang/StringBuilder;
sget-object v3, Lcom/umeng/newxp/common/ExchangeConstants;->BASE_URL_LIST:[Ljava/lang/String;
aget-object v3, v3, v5
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;
goto/16 :goto_b5
:cond_158
if-eqz v2, :cond_169
const/4 v3, 0x1
invoke-static {}, Lcom/umeng/newxp/Promoter$a;->a()[Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/umeng/newxp/common/g;->a(Ljava/lang/String;Z[Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_169
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;
goto/16 :goto_cf
:cond_169
new-instance v2, Ljava/lang/StringBuilder;
sget-object v3, Lcom/umeng/newxp/common/ExchangeConstants;->BASE_URL_LIST:[Ljava/lang/String;
aget-object v3, v3, v5
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;
goto/16 :goto_cf
.end method
.method public toJson()Lorg/json/JSONObject;
.registers 5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string/jumbo v1, "promoter"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->promoter:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "category"
iget v2, p0, Lcom/umeng/newxp/Promoter;->category:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "content_type"
iget v2, p0, Lcom/umeng/newxp/Promoter;->content_type:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "display_type"
iget v2, p0, Lcom/umeng/newxp/Promoter;->display_type:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "img"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->img:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "anim_in"
iget v2, p0, Lcom/umeng/newxp/Promoter;->anim_in:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "display_type"
iget v2, p0, Lcom/umeng/newxp/Promoter;->display_type:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "img"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->img:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "landing_type"
iget v2, p0, Lcom/umeng/newxp/Promoter;->landing_type:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "text_size"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->text_size:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "text_color"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->text_color:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "text_font"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->text_font:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "title"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "provider"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->provider:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "ad_words"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->ad_words:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "description"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->description:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "icon"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "url"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "new"
iget v2, p0, Lcom/umeng/newxp/Promoter;->new_tip:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "app_version_code"
iget v2, p0, Lcom/umeng/newxp/Promoter;->app_version_code:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "url_in_app"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->url_in_app:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "size"
iget-wide v2, p0, Lcom/umeng/newxp/Promoter;->size:J
invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string/jumbo v1, "app_package_name"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "app_version_name"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->app_version_name:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "price"
iget-object v2, p0, Lcom/umeng/newxp/Promoter;->price:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "bid"
iget-wide v2, p0, Lcom/umeng/newxp/Promoter;->bid:D
invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
:goto_d5
:try_end_d5
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d5} :catch_d6
return-object v0
:catch_d6
move-exception v0
const/4 v0, 0x0
goto :goto_d5
.end method