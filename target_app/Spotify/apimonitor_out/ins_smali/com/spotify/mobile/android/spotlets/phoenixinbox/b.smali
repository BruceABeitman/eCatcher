.class public final Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;
.super Landroid/support/v4/widget/b;
.source "SourceFile"
.field private final j:Lcom/spotify/mobile/android/ui/contextmenu/f;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/widget/b;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
return-void
.end method
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
new-instance v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;-><init>(Landroid/content/Context;)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;-><init>()V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->setTag(Ljava/lang/Object;)V
return-object v0
.end method
.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 8
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;
invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->a(Landroid/database/Cursor;)V
check-cast p1, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->a(Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;->d:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->a(Landroid/view/View;)V
const v1, 0x7f0a013c
new-instance v2, Lcom/spotify/mobile/android/ui/contextmenu/a/a;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v2, v3, v0}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
invoke-virtual {p1, v1, v2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->setTag(ILjava/lang/Object;)V
return-void
.end method