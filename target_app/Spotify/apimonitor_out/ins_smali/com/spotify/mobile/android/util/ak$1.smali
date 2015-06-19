.class final Lcom/spotify/mobile/android/util/ak$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/bg;
.field final synthetic a:Lcom/spotify/mobile/android/util/ak;
.method constructor <init>(Lcom/spotify/mobile/android/util/ak;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/ak$1;->a:Lcom/spotify/mobile/android/util/ak;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 4
const-string v0, "Sent SoftCrash to crashdump."
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 5
const-string v0, "Couldn\'t send SoftCrash to crashdump."
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method