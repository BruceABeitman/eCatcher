.class final Lcom/spotify/mobile/android/ui/fragments/s$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/s;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/s;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "connected"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "can_stream"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->b:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 10
const/16 v3, 0x8
const/4 v1, 0x1
const/4 v2, 0x0
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_8e
invoke-static {p2, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v5
iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
if-eqz v4, :cond_8f
if-eqz v5, :cond_8f
move v0, v1
:goto_1b
invoke-static {v6, v0}, Lcom/spotify/mobile/android/ui/fragments/s;->a(Lcom/spotify/mobile/android/ui/fragments/s;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->x_()V
if-eqz v5, :cond_2b
if-nez v4, :cond_91
:goto_2b
:cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->e(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v4
if-eqz v1, :cond_93
move v0, v2
:goto_34
invoke-virtual {v4, v0}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->f(Lcom/spotify/mobile/android/ui/fragments/s;)Landroid/widget/ListView;
move-result-object v4
if-eqz v1, :cond_95
move v0, v3
:goto_40
invoke-virtual {v4, v0}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->e(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->e()Landroid/view/View;
move-result-object v0
if-nez v5, :cond_97
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/s;->g(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/util/ClientInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z
move-result v4
if-eqz v4, :cond_97
:goto_5b
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
if-eqz v1, :cond_8e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->e(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
if-nez v5, :cond_99
const v0, 0x7f0f023f
:goto_73
invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/ui/fragments/s;->b(I)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/stuff/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;
if-nez v5, :cond_8e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->e(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/s$7;->a:Lcom/spotify/mobile/android/ui/fragments/s;
const v2, 0x7f0f0240
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/fragments/s;->b(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
:cond_8e
return-void
:cond_8f
move v0, v2
goto :goto_1b
:cond_91
move v1, v2
goto :goto_2b
:cond_93
move v0, v3
goto :goto_34
:cond_95
move v0, v2
goto :goto_40
:cond_97
move v2, v3
goto :goto_5b
:cond_99
const v0, 0x7f0f0241
goto :goto_73
.end method