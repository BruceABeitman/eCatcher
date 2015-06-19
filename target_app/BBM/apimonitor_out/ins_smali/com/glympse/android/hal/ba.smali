.class  Lcom/glympse/android/hal/ba;
.super Ljava/lang/Object;
.source "PhoneFavoriteProvider.java"
.implements Ljava/lang/Runnable;
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private cD:Lcom/glympse/android/hal/PhoneFavoriteProvider;
.field private cE:Lcom/glympse/android/hal/GVector;
.field private e:Landroid/content/Context;
.method public constructor <init>(Lcom/glympse/android/hal/PhoneFavoriteProvider;Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/glympse/android/hal/ba;->cD:Lcom/glympse/android/hal/PhoneFavoriteProvider;
iput-object v0, p0, Lcom/glympse/android/hal/ba;->e:Landroid/content/Context;
iput-object v0, p0, Lcom/glympse/android/hal/ba;->_handler:Lcom/glympse/android/core/GHandler;
iput-object v0, p0, Lcom/glympse/android/hal/ba;->cE:Lcom/glympse/android/hal/GVector;
iput-object p1, p0, Lcom/glympse/android/hal/ba;->cD:Lcom/glympse/android/hal/PhoneFavoriteProvider;
iput-object p2, p0, Lcom/glympse/android/hal/ba;->e:Landroid/content/Context;
iget-object v0, p1, Lcom/glympse/android/hal/PhoneFavoriteProvider;->_handler:Lcom/glympse/android/core/GHandler;
iput-object v0, p0, Lcom/glympse/android/hal/ba;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/hal/ba;->cE:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/glympse/android/hal/ba;->e:Landroid/content/Context;
invoke-static {v0}, Lcom/glympse/android/hal/PhoneFavoriteProvider;->e(Landroid/content/Context;)Lcom/glympse/android/hal/GVector;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/ba;->cE:Lcom/glympse/android/hal/GVector;
iget-object v0, p0, Lcom/glympse/android/hal/ba;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v1, Lcom/glympse/android/hal/az;
iget-object v2, p0, Lcom/glympse/android/hal/ba;->cD:Lcom/glympse/android/hal/PhoneFavoriteProvider;
iget-object v3, p0, Lcom/glympse/android/hal/ba;->cE:Lcom/glympse/android/hal/GVector;
invoke-direct {v1, v2, v3}, Lcom/glympse/android/hal/az;-><init>(Lcom/glympse/android/hal/PhoneFavoriteProvider;Lcom/glympse/android/hal/GVector;)V
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
:goto_16
:try_end_16
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17
return-void
:catch_17
move-exception v0
goto :goto_16
.end method