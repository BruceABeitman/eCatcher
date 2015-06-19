.class final Lcom/crashlytics/android/A;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.field private synthetic a:Lcom/crashlytics/android/v;
.method constructor <init>(Lcom/crashlytics/android/v;)V
.registers 2
iput-object p1, p0, Lcom/crashlytics/android/A;->a:Lcom/crashlytics/android/v;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic call()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/crashlytics/android/A;->a:Lcom/crashlytics/android/v;
invoke-static {v0}, Lcom/crashlytics/android/v;->f(Lcom/crashlytics/android/v;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v0
invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v0
const-string v1, "Crashlytics"
const-string v2, "Initialization marker file created."
invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
return-object v0
.end method