.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/c;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/c;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;B)V
return-object v0
.end method