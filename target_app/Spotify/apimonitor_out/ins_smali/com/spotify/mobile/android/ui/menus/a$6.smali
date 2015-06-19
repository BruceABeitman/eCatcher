.class final Lcom/spotify/mobile/android/ui/menus/a$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field final synthetic c:Landroid/net/Uri;
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/a$6;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/a$6;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/a$6;->c:Landroid/net/Uri;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/menus/a$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/a$6;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/a$6;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->an:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->H:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/a$6;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/a$6;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/a$6;->c:Landroid/net/Uri;
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/menus/a$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method