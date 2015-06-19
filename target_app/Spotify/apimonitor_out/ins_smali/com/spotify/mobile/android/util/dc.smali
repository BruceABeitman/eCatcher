.class public Lcom/spotify/mobile/android/util/dc;
.super Lnet/hockeyapp/android/c;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.field private final a:Lcom/spotify/mobile/android/util/ah;
.field private final b:Lcom/spotify/mobile/android/util/ao;
.field private c:Ljava/lang/String;
.method public constructor <init>(Lcom/spotify/mobile/android/util/ah;Lcom/spotify/mobile/android/util/ao;)V
.registers 3
invoke-direct {p0}, Lnet/hockeyapp/android/c;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/dc;->a:Lcom/spotify/mobile/android/util/ah;
iput-object p2, p0, Lcom/spotify/mobile/android/util/dc;->b:Lcom/spotify/mobile/android/util/ao;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/dc;->a:Lcom/spotify/mobile/android/util/ah;
invoke-interface {v0}, Lcom/spotify/mobile/android/util/ah;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/dc;->c:Ljava/lang/String;
return-void
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/dc;->b:Lcom/spotify/mobile/android/util/ao;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->f()Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/util/dc;->b:Lcom/spotify/mobile/android/util/ao;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->g()Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
invoke-super {p0}, Lnet/hockeyapp/android/c;->c()Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public final d()Z
.registers 2
const/4 v0, 0x1
return v0
.end method