.class final Lcom/spotify/mobile/android/ui/fragments/t$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/t;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/t;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/t$1;->a:Lcom/spotify/mobile/android/ui/fragments/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
.registers 7
check-cast p2, Lcom/spotify/mobile/android/model/k;
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/g;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/t$1;->a:Lcom/spotify/mobile/android/ui/fragments/t;
iget-object v1, v1, Lcom/spotify/mobile/android/ui/fragments/t;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->b:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct {v0, v1, v2, v3, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
invoke-interface {p2}, Lcom/spotify/mobile/android/model/k;->e()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a([Ljava/lang/String;)V
invoke-interface {p2}, Lcom/spotify/mobile/android/model/k;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->f(Ljava/lang/String;)V
invoke-interface {p2}, Lcom/spotify/mobile/android/model/k;->d()Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->j()Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
move-result-object v0
invoke-interface {p2}, Lcom/spotify/mobile/android/model/k;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->a(Ljava/lang/String;)V
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->j()Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
move-result-object v0
invoke-interface {p2}, Lcom/spotify/mobile/android/model/k;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->b(Ljava/lang/String;)V
return-void
.end method