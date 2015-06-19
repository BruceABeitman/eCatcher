.class final Lcom/crashlytics/android/z;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.field private synthetic a:Lcom/crashlytics/android/v;
.method constructor <init>(Lcom/crashlytics/android/v;)V
.registers 2
iput-object p1, p0, Lcom/crashlytics/android/z;->a:Lcom/crashlytics/android/v;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic call()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/crashlytics/android/z;->a:Lcom/crashlytics/android/v;
invoke-virtual {v0}, Lcom/crashlytics/android/v;->g()Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/crashlytics/android/z;->a:Lcom/crashlytics/android/v;
invoke-static {v0}, Lcom/crashlytics/android/v;->c(Lcom/crashlytics/android/v;)V
:cond_d
const/4 v0, 0x0
return-object v0
.end method