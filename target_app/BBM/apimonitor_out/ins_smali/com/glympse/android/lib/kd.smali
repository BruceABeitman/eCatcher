.class  Lcom/glympse/android/lib/kd;
.super Lcom/glympse/android/lib/an;
.source "WebImageProvider.java"
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private uH:Lcom/glympse/android/hal/GMutex;
.field private uI:Lcom/glympse/android/hal/GVector;
.method public constructor <init>(Lcom/glympse/android/core/GHandler;)V
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/an;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/kd;->_handler:Lcom/glympse/android/core/GHandler;
invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createMutex()Lcom/glympse/android/hal/GMutex;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/kd;->uH:Lcom/glympse/android/hal/GMutex;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/kd;->uI:Lcom/glympse/android/hal/GVector;
const-string v0, "http"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/kd;->m(Ljava/lang/String;)V
return-void
.end method
.method public static a(Lcom/glympse/android/hal/GHttpConnection;)Lcom/glympse/android/hal/GDrawablePrivate;
.registers 6
const/4 v1, 0x0
invoke-interface {p0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseCode()I
move-result v0
invoke-interface {p0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseDataLength()I
move-result v2
const/16 v3, 0xc8
if-ne v3, v0, :cond_f
if-gtz v2, :cond_11
:cond_f
move-object v0, v1
:goto_10
:cond_10
return-object v0
:cond_11
invoke-static {v1}, Lcom/glympse/android/core/CoreFactory;->createDrawable(Landroid/graphics/drawable/BitmapDrawable;)Lcom/glympse/android/core/GDrawable;
move-result-object v0
check-cast v0, Lcom/glympse/android/hal/GDrawablePrivate;
invoke-interface {p0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseData()[B
move-result-object v3
const/4 v4, 0x0
invoke-interface {v0, v3, v2, v4}, Lcom/glympse/android/hal/GDrawablePrivate;->setBuffer([BIZ)V
const/4 v2, 0x1
invoke-interface {v0, v2}, Lcom/glympse/android/hal/GDrawablePrivate;->decompress(Z)Z
move-result v2
if-nez v2, :cond_10
move-object v0, v1
goto :goto_10
.end method
.method public static a(Lcom/glympse/android/hal/GHttpConnection;Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0, v0}, Lcom/glympse/android/lib/kd;->a(Lcom/glympse/android/hal/GHttpConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static a(Lcom/glympse/android/hal/GHttpConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-interface {p0, p1}, Lcom/glympse/android/hal/GHttpConnection;->setUrl(Ljava/lang/String;)V
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_20
const/4 v0, 0x1
invoke-interface {p0, v0}, Lcom/glympse/android/hal/GHttpConnection;->setRequestMethod(Z)V
invoke-interface {p0, p2}, Lcom/glympse/android/hal/GHttpConnection;->setRequestData(Ljava/lang/String;)V
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1f
const-string v0, "Content-Type"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0, p3}, Lcom/glympse/android/hal/GHttpConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_1f
:goto_1f
return-void
:cond_20
const/4 v0, 0x0
invoke-interface {p0, v0}, Lcom/glympse/android/hal/GHttpConnection;->setRequestMethod(Z)V
goto :goto_1f
.end method
.method private b(Lcom/glympse/android/hal/GHttpConnection;)V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/glympse/android/lib/kd;->uH:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V
iget-object v0, p0, Lcom/glympse/android/lib/kd;->uI:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/kd;->uH:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
:goto_f
:try_end_f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
goto :goto_f
.end method
.method private c(Lcom/glympse/android/hal/GHttpConnection;)V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/glympse/android/lib/kd;->uH:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V
iget-object v0, p0, Lcom/glympse/android/lib/kd;->uI:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/glympse/android/lib/kd;->uH:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
:goto_f
:try_end_f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
goto :goto_f
.end method
.method private cV()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/glympse/android/lib/kd;->uH:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V
iget-object v0, p0, Lcom/glympse/android/lib/kd;->uI:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_d
if-ge v1, v2, :cond_1e
iget-object v0, p0, Lcom/glympse/android/lib/kd;->uI:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/hal/GHttpConnection;
invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->close()V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_d
:cond_1e
iget-object v0, p0, Lcom/glympse/android/lib/kd;->uH:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
:goto_23
:try_end_23
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24
return-void
:catch_24
move-exception v0
goto :goto_23
.end method
.method public isMatches(Lcom/glympse/android/lib/GUri;)Z
.registers 5
const/4 v0, 0x0
invoke-interface {p1}, Lcom/glympse/android/lib/GUri;->getScheme()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_14
const-string v2, "http"
invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v1
if-nez v1, :cond_14
const/4 v0, 0x1
:cond_14
return v0
.end method
.method public load(Lcom/glympse/android/lib/GUri;)Lcom/glympse/android/core/GCommon;
.registers 11
const/4 v2, 0x0
invoke-interface {p1}, Lcom/glympse/android/lib/GUri;->getUriString()Ljava/lang/String;
move-result-object v3
new-instance v4, Lcom/glympse/android/lib/bm;
invoke-direct {v4}, Lcom/glympse/android/lib/bm;-><init>()V
const/16 v0, 0x1388
invoke-virtual {v4, v0}, Lcom/glympse/android/lib/bm;->k(I)V
move v1, v2
:goto_10
const/4 v0, 0x5
if-ge v1, v0, :cond_67
:try_start_13
invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createHttpConnection()Lcom/glympse/android/hal/GHttpConnection;
move-result-object v5
invoke-static {v5, v3}, Lcom/glympse/android/lib/kd;->a(Lcom/glympse/android/hal/GHttpConnection;Ljava/lang/String;)V
invoke-virtual {v4}, Lcom/glympse/android/lib/bm;->aY()I
move-result v0
invoke-interface {v5, v0}, Lcom/glympse/android/hal/GHttpConnection;->setConnectTimeout(I)V
invoke-virtual {v4}, Lcom/glympse/android/lib/bm;->aZ()I
move-result v0
invoke-interface {v5, v0}, Lcom/glympse/android/hal/GHttpConnection;->setReadTimeout(I)V
new-instance v0, Lcom/glympse/android/lib/ke;
invoke-direct {v0, p0, v5}, Lcom/glympse/android/lib/ke;-><init>(Lcom/glympse/android/lib/kd;Lcom/glympse/android/hal/GHttpConnection;)V
iget-object v6, p0, Lcom/glympse/android/lib/kd;->_handler:Lcom/glympse/android/core/GHandler;
invoke-virtual {v4}, Lcom/glympse/android/lib/bm;->ba()J
move-result-wide v7
invoke-interface {v6, v0, v7, v8}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
invoke-direct {p0, v5}, Lcom/glympse/android/lib/kd;->b(Lcom/glympse/android/hal/GHttpConnection;)V
:try_start_39
:try_end_39
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_39} :catch_57
invoke-interface {v5}, Lcom/glympse/android/hal/GHttpConnection;->establish()V
:try_end_3c
.catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_51
:goto_3c
:try_start_3c
invoke-direct {p0, v5}, Lcom/glympse/android/lib/kd;->c(Lcom/glympse/android/hal/GHttpConnection;)V
invoke-virtual {v0}, Lcom/glympse/android/lib/ke;->abort()V
iget-object v6, p0, Lcom/glympse/android/lib/kd;->_handler:Lcom/glympse/android/core/GHandler;
invoke-interface {v6, v0}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
invoke-static {v5}, Lcom/glympse/android/lib/kd;->a(Lcom/glympse/android/hal/GHttpConnection;)Lcom/glympse/android/hal/GDrawablePrivate;
move-result-object v0
invoke-interface {v5}, Lcom/glympse/android/hal/GHttpConnection;->close()V
if-eqz v0, :cond_5b
:goto_50
return-object v0
:catch_51
move-exception v6
const/4 v7, 0x0
invoke-static {v6, v7}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:try_end_56
.catch Ljava/lang/Exception; {:try_start_3c .. :try_end_56} :catch_57
goto :goto_3c
:catch_57
move-exception v0
invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_5b
invoke-virtual {v4}, Lcom/glympse/android/lib/bm;->aX()I
move-result v0
int-to-long v5, v0
invoke-static {v5, v6}, Lcom/glympse/android/hal/Concurrent;->sleep(J)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_10
:cond_67
const/4 v0, 0x0
goto :goto_50
.end method
.method public stop()V
.registers 1
invoke-direct {p0}, Lcom/glympse/android/lib/kd;->cV()V
return-void
.end method