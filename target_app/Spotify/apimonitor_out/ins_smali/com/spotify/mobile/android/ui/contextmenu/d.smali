.class final Lcom/spotify/mobile/android/ui/contextmenu/d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/c;
.field private final b:Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/c;Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/d;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/c;Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/d;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/c;Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;)V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/contextmenu/d; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/d;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->f()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/c;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/c;)Lcom/spotify/mobile/android/ui/contextmenu/a;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a()V
const-string v1, " - Lcom/spotify/mobile/android/ui/contextmenu/d; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method