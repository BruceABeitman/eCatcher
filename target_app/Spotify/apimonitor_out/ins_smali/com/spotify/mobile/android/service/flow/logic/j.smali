.class public final Lcom/spotify/mobile/android/service/flow/logic/j;
.super Lcom/spotify/mobile/android/ui/fragments/x;
.source "SourceFile"
.field private static final a:Ljava/lang/CharSequence;
.field private static final b:Ljava/lang/CharSequence;
.method static constructor <clinit>()V
.registers 1
const-string v0, "play.google.com"
sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/j;->a:Ljava/lang/CharSequence;
const-string v0, "com.spotify.music"
sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/j;->b:Ljava/lang/CharSequence;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/x;-><init>()V
return-void
.end method
.method protected final a()V
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/j;->n()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/h;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/h;->D()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/j;->c(Ljava/lang/String;)V
return-void
.end method
.method protected final a(Ljava/lang/String;)V
.registers 3
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Ljava/lang/String;)V
const-string v0, "/invite/"
invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1a
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/j;->n()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/h;
if-eqz v0, :cond_1a
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/h;->c()Lcom/spotify/mobile/android/service/flow/logic/i;
move-result-object v0
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/flow/logic/i;->a(Ljava/lang/String;)V
:cond_1a
return-void
.end method
.method protected final a(Landroid/net/Uri;)Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p1, :cond_a
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_b
:cond_a
:goto_a
return v2
:cond_b
invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z
move-result v0
if-eqz v0, :cond_62
invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v0
sget-object v3, Lcom/spotify/mobile/android/service/flow/logic/j;->a:Ljava/lang/CharSequence;
invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
const-string v0, "id"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_5e
sget-object v4, Lcom/spotify/mobile/android/service/flow/logic/j;->b:Ljava/lang/CharSequence;
invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_5e
move v0, v1
:goto_2c
move v5, v3
move v3, v0
move v0, v5
:goto_2f
if-eqz v0, :cond_60
if-eqz v3, :cond_60
move v0, v1
:goto_34
if-eqz v0, :cond_43
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/j;->n()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/h;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/h;->c()Lcom/spotify/mobile/android/service/flow/logic/i;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/logic/i;->a()V
:cond_43
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
const-string v3, "/login/"
invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/j;->n()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/h;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/h;->c()Lcom/spotify/mobile/android/service/flow/logic/i;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/logic/i;->a()V
move v2, v1
goto :goto_a
:cond_5e
move v0, v2
goto :goto_2c
:cond_60
move v0, v2
goto :goto_34
:cond_62
move v0, v2
move v3, v2
goto :goto_2f
.end method