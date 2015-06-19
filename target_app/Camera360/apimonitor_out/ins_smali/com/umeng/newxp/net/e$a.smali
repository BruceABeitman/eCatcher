.class public Lcom/umeng/newxp/net/e$a;
.super Ljava/lang/Object;
.source "XpReportRequest.java"
.field private static final w:Ljava/util/Random; = null
.field private static final x:I = 0x7fff
.field private A:I
.field private B:I
.field  a:Landroid/content/Context;
.field  b:Ljava/util/List;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:I
.field private l:J
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.field private o:Ljava/lang/String;
.field private p:Ljava/lang/String;
.field private q:Ljava/lang/String;
.field private r:I
.field private s:I
.field private t:I
.field private u:I
.field private v:Ljava/lang/String;
.field private y:I
.field private z:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
sput-object v0, Lcom/umeng/newxp/net/e$a;->w:Ljava/util/Random;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/umeng/newxp/net/e$a;->A:I
const/4 v0, 0x1
iput v0, p0, Lcom/umeng/newxp/net/e$a;->B:I
iput-object p1, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;
return-void
.end method
.method private a(Landroid/content/Context;)Ljava/util/Map;
.registers 8
const/4 v0, 0x0
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
:try_start_6
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->d:Ljava/lang/String;
invoke-static {v2}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_130
const-string/jumbo v2, "slot_id"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->d:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_16
const-string/jumbo v2, "sdk_version"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->e:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "protocol_version"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->f:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "ts"
iget-wide v3, p0, Lcom/umeng/newxp/net/e$a;->l:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "device_model"
sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;
invoke-static {v2}, Lcom/umeng/common/b;->r(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_4c
const-string/jumbo v3, "mc"
invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_4c
const-string/jumbo v2, "carrier"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;
invoke-static {v3}, Lcom/umeng/common/b;->i(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "os_version"
sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "os"
const-string/jumbo v3, "android"
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "rid"
iget v3, p0, Lcom/umeng/newxp/net/e$a;->y:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "access"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->p:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->q:Ljava/lang/String;
invoke-static {v2}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_8d
const-string/jumbo v2, "access_subtype"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->q:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_8d
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->z:Ljava/lang/String;
invoke-static {v2}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_9d
const-string/jumbo v2, "tcost"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->z:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_9d
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->g:Ljava/lang/String;
invoke-static {v2}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_ad
const-string/jumbo v2, "sid"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->g:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_ad
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->h:Ljava/lang/String;
invoke-static {v2}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_c9
const-string/jumbo v2, "device_id"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->h:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "idmd5"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->h:Ljava/lang/String;
invoke-static {v3}, Lcom/umeng/common/util/g;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_c9
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;
invoke-static {v2}, Lcom/umeng/common/b;->m(Landroid/content/Context;)Landroid/location/Location;
move-result-object v2
if-eqz v2, :cond_fb
const-string/jumbo v3, "lat"
invoke-static {v2}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "lng"
invoke-static {v2}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v2}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v2
const-string/jumbo v4, "gpst"
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_fb
const-string/jumbo v2, "date"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->i:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "time"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->j:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "timezone"
iget v3, p0, Lcom/umeng/newxp/net/e$a;->k:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "orientation"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->m:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->n:Ljava/lang/String;
invoke-static {v2}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_151
sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v3, "Empty promoters found. Report aborted."
invoke-static {v2, v3}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_12f
return-object v0
:cond_130
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->c:Ljava/lang/String;
invoke-static {v2}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_148
const-string/jumbo v2, "app_key"
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->c:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_140
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_140} :catch_142
goto/16 :goto_16
:catch_142
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:goto_146
:cond_146
move-object v0, v1
goto :goto_12f
:cond_148
:try_start_148
sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v3, "Both UMENG_APPKEY and UMENG_SLOTID are empty, please specify either one.  Report aborted."
invoke-static {v2, v3}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_12f
:cond_151
const-string/jumbo v0, "promoter"
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->n:Ljava/lang/String;
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v0, "category"
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->o:Ljava/lang/String;
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v0, "action_type"
iget v2, p0, Lcom/umeng/newxp/net/e$a;->r:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v0, "action_index"
iget v2, p0, Lcom/umeng/newxp/net/e$a;->s:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v0, "layout_type"
iget v2, p0, Lcom/umeng/newxp/net/e$a;->t:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v0, "page_level"
iget v2, p0, Lcom/umeng/newxp/net/e$a;->u:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->v:Ljava/lang/String;
invoke-static {v0}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a1
const-string/jumbo v0, "channel"
iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->v:Ljava/lang/String;
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1a1
iget v0, p0, Lcom/umeng/newxp/net/e$a;->A:I
if-eqz v0, :cond_1b1
const-string/jumbo v0, "display_style"
iget v2, p0, Lcom/umeng/newxp/net/e$a;->A:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1b1
const-string/jumbo v0, "page_content_type"
iget v2, p0, Lcom/umeng/newxp/net/e$a;->B:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->d:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1ed
iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->c:Ljava/lang/String;
:try_start_1c7
:goto_1c7
:try_end_1c7
.catch Ljava/lang/Exception; {:try_start_148 .. :try_end_1c7} :catch_142
new-instance v2, Lcom/umeng/newxp/controller/i;
iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;
invoke-direct {v2, v3, v0}, Lcom/umeng/newxp/controller/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/umeng/newxp/controller/i;->b()Z
move-result v0
if-eqz v0, :cond_146
invoke-virtual {v2}, Lcom/umeng/newxp/controller/i;->c()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_146
const-string/jumbo v2, "dginfo"
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_1e0
.catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1e0} :catch_1e2
goto/16 :goto_146
:catch_1e2
move-exception v0
:try_start_1e3
sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v3, ""
invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto/16 :goto_146
:cond_1ed
iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->d:Ljava/lang/String;
:try_end_1ef
.catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1ef} :catch_142
goto :goto_1c7
.end method
.method private a(Ljava/util/Map;)Z
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
sget-object v2, Lcom/umeng/newxp/net/e;->e:[Ljava/lang/String;
if-nez v2, :cond_56
const/16 v2, 0xc
new-array v2, v2, [Ljava/lang/String;
const-string/jumbo v3, "category"
aput-object v3, v2, v1
const-string/jumbo v3, "sid"
aput-object v3, v2, v0
const/4 v3, 0x2
const-string/jumbo v4, "device_id"
aput-object v4, v2, v3
const/4 v3, 0x3
const-string/jumbo v4, "idmd5"
aput-object v4, v2, v3
const/4 v3, 0x4
const-string/jumbo v4, "mc"
aput-object v4, v2, v3
const/4 v3, 0x5
const-string/jumbo v4, "action_type"
aput-object v4, v2, v3
const/4 v3, 0x6
const-string/jumbo v4, "action_index"
aput-object v4, v2, v3
const/4 v3, 0x7
const-string/jumbo v4, "layout_type"
aput-object v4, v2, v3
const/16 v3, 0x8
const-string/jumbo v4, "time"
aput-object v4, v2, v3
const/16 v3, 0x9
const-string/jumbo v4, "date"
aput-object v4, v2, v3
const/16 v3, 0xa
const-string/jumbo v4, "access"
aput-object v4, v2, v3
const/16 v3, 0xb
const-string/jumbo v4, "access_subtype"
aput-object v4, v2, v3
sput-object v2, Lcom/umeng/newxp/net/e;->e:[Ljava/lang/String;
:cond_56
if-eqz p1, :cond_5e
invoke-interface {p1}, Ljava/util/Map;->size()I
move-result v2
if-nez v2, :cond_60
:cond_5e
move v0, v1
:cond_5f
return v0
:cond_60
sget-object v3, Lcom/umeng/newxp/net/e;->e:[Ljava/lang/String;
array-length v4, v3
move v2, v1
:goto_64
if-ge v2, v4, :cond_5f
aget-object v5, v3, v2
invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_8b
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Report params has no required param ["
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "]"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v0, v5}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
:cond_8b
add-int/lit8 v2, v2, 0x1
goto :goto_64
.end method
.method public a(I)Lcom/umeng/newxp/net/e$a;
.registers 2
iput p1, p0, Lcom/umeng/newxp/net/e$a;->r:I
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/net/e$a;->d:Ljava/lang/String;
return-object p0
.end method
.method public varargs a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;
.registers 9
const/4 v0, 0x0
array-length v2, p1
move v1, v0
:goto_3
if-lt v1, v2, :cond_3a
iget-object v1, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;
if-eqz v1, :cond_39
iget-object v1, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_39
iget-object v1, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v2
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
move v1, v0
:goto_22
if-lt v1, v2, :cond_44
invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->n:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->o:Ljava/lang/String;
:cond_39
return-object p0
:cond_3a
aget-object v3, p1, v1
iget-object v4, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;
invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_44
iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/Promoter;
new-instance v5, Ljava/lang/StringBuilder;
iget-object v6, v0, Lcom/umeng/newxp/Promoter;->promoter:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, ","
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v5, Ljava/lang/StringBuilder;
iget v0, v0, Lcom/umeng/newxp/Promoter;->category:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, ","
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_22
.end method
.method public a()Lcom/umeng/newxp/net/e;
.registers 3
invoke-virtual {p0}, Lcom/umeng/newxp/net/e$a;->b()Ljava/util/Map;
move-result-object v0
new-instance v1, Lcom/umeng/newxp/net/e;
invoke-direct {v1, v0}, Lcom/umeng/newxp/net/e;-><init>(Ljava/util/Map;)V
return-object v1
.end method
.method public b(I)Lcom/umeng/newxp/net/e$a;
.registers 2
iput p1, p0, Lcom/umeng/newxp/net/e$a;->s:I
return-object p0
.end method
.method public b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/net/e$a;->c:Ljava/lang/String;
return-object p0
.end method
.method public b()Ljava/util/Map;
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->sdk_version:Ljava/lang/String;
iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->e:Ljava/lang/String;
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->protocol_version:Ljava/lang/String;
iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->h:Ljava/lang/String;
invoke-static {}, Lcom/umeng/common/util/g;->a()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, " "
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
aget-object v1, v1, v2
iput-object v1, p0, Lcom/umeng/newxp/net/e$a;->i:Ljava/lang/String;
const-string/jumbo v1, " "
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
aget-object v0, v0, v3
iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->j:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/umeng/newxp/net/e$a;->l:J
iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/common/b;->o(Landroid/content/Context;)I
move-result v0
iput v0, p0, Lcom/umeng/newxp/net/e$a;->k:I
iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/common/b;->c(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_8e
const-string/jumbo v0, "0"
:goto_45
iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->m:Ljava/lang/String;
iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/newxp/common/g;->y(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->v:Ljava/lang/String;
sget-object v0, Lcom/umeng/newxp/net/e$a;->w:Ljava/util/Random;
const/16 v1, 0x7fff
invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I
move-result v0
iput v0, p0, Lcom/umeng/newxp/net/e$a;->y:I
:try_start_59
iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/common/b;->k(Landroid/content/Context;)[Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
aget-object v1, v0, v1
iput-object v1, p0, Lcom/umeng/newxp/net/e$a;->p:Ljava/lang/String;
const-string/jumbo v1, "2G/3G"
const/4 v2, 0x0
aget-object v2, v0, v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_75
const/4 v1, 0x1
aget-object v0, v0, v1
iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->q:Ljava/lang/String;
:try_end_75
.catch Ljava/lang/Exception; {:try_start_59 .. :try_end_75} :catch_92
:goto_75
:cond_75
iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;
invoke-direct {p0, v0}, Lcom/umeng/newxp/net/e$a;->a(Landroid/content/Context;)Ljava/util/Map;
move-result-object v0
sget-boolean v1, Lcom/umeng/newxp/common/ExchangeConstants;->DEBUG_MODE:Z
if-eqz v1, :cond_8d
invoke-direct {p0, v0}, Lcom/umeng/newxp/net/e$a;->a(Ljava/util/Map;)Z
move-result v1
if-nez v1, :cond_8d
sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v2, "Report params verify failed..."
invoke-static {v1, v2}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_8d
return-object v0
:cond_8e
const-string/jumbo v0, "1"
goto :goto_45
:catch_92
move-exception v0
const-string/jumbo v0, "Unknown"
iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->p:Ljava/lang/String;
goto :goto_75
.end method
.method public c(I)Lcom/umeng/newxp/net/e$a;
.registers 2
iput p1, p0, Lcom/umeng/newxp/net/e$a;->t:I
return-object p0
.end method
.method public c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/net/e$a;->g:Ljava/lang/String;
return-object p0
.end method
.method public d(I)Lcom/umeng/newxp/net/e$a;
.registers 2
iput p1, p0, Lcom/umeng/newxp/net/e$a;->u:I
return-object p0
.end method
.method public d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/net/e$a;->z:Ljava/lang/String;
return-object p0
.end method
.method public e(I)Lcom/umeng/newxp/net/e$a;
.registers 2
iput p1, p0, Lcom/umeng/newxp/net/e$a;->B:I
return-object p0
.end method
.method public f(I)Lcom/umeng/newxp/net/e$a;
.registers 2
iput p1, p0, Lcom/umeng/newxp/net/e$a;->A:I
return-object p0
.end method