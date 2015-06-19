.class final Lcom/spotify/mobile/android/util/Assertion$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/i;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;)V
.registers 4
const-string v0, ""
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
throw p1
.end method
.method public final a(Ljava/lang/AssertionError;)V
.registers 4
const-string v0, ""
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
throw p1
.end method