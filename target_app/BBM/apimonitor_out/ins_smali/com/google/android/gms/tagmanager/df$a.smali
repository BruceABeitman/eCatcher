.class  Lcom/google/android/gms/tagmanager/df$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/analytics/Logger;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static bX(I)I
.registers 2
const/4 v0, 0x3
packed-switch p0, :pswitch_data_c
:pswitch_4
:goto_4
return v0
:pswitch_5
const/4 v0, 0x2
goto :goto_4
:pswitch_7
const/4 v0, 0x1
goto :goto_4
:pswitch_9
const/4 v0, 0x0
goto :goto_4
nop
:pswitch_data_c
.packed-switch 0x2
:pswitch_9
:pswitch_7
:pswitch_7
:pswitch_5
:pswitch_4
.end packed-switch
.end method
.method public error(Ljava/lang/Exception;)V
.registers 3
const-string v0, ""
invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/bh;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method
.method public error(Ljava/lang/String;)V
.registers 2
invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
return-void
.end method
.method public getLogLevel()I
.registers 2
invoke-static {}, Lcom/google/android/gms/tagmanager/bh;->getLogLevel()I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/df$a;->bX(I)I
move-result v0
return v0
.end method
.method public info(Ljava/lang/String;)V
.registers 2
invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->u(Ljava/lang/String;)V
return-void
.end method
.method public setLogLevel(I)V
.registers 3
const-string v0, "GA uses GTM logger. Please use TagManager.setLogLevel(int) instead."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
return-void
.end method
.method public verbose(Ljava/lang/String;)V
.registers 2
invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V
return-void
.end method
.method public warn(Ljava/lang/String;)V
.registers 2
invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
return-void
.end method