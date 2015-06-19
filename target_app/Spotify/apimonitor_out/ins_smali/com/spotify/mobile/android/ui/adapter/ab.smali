.class public final Lcom/spotify/mobile/android/ui/adapter/ab;
.super Landroid/support/v4/widget/b;
.source "SourceFile"
.field private static final m:Lcom/spotify/mobile/android/ui/adapter/z;
.field private final j:Ljava/lang/String;
.field private final k:Ljava/lang/String;
.field private final l:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/ab$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/adapter/ab$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/ab;->m:Lcom/spotify/mobile/android/ui/adapter/z;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Landroid/support/v4/widget/b;-><init>(Landroid/content/Context;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ab;->d:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0f02d0
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ab;->j:Ljava/lang/String;
const v0, 0x7f0f02b7
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ab;->k:Ljava/lang/String;
const v0, 0x7f0f02b8
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ab;->l:Ljava/lang/String;
return-void
.end method
.method public final synthetic a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-static {p1, p3}, Lcom/spotify/android/paste/widget/h;->i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 8
check-cast p1, Lcom/spotify/android/paste/widget/ListItemView;
new-instance v0, Lcom/spotify/mobile/android/model/h;
invoke-direct {v0}, Lcom/spotify/mobile/android/model/h;-><init>()V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/ab;->j:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/ab;->k:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/ab;->l:Ljava/lang/String;
invoke-virtual {v0, p3, v1, v2, v3}, Lcom/spotify/mobile/android/model/h;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/ab;->m:Lcom/spotify/mobile/android/ui/adapter/z;
invoke-static {p2, p1, v0, v1}, Lcom/spotify/mobile/android/ui/adapter/aa;->a(Landroid/content/Context;Lcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/model/h;Lcom/spotify/mobile/android/ui/adapter/z;)V
invoke-virtual {p1}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0201d0
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
invoke-virtual {p1}, Lcom/spotify/android/paste/widget/ListItemView;->c()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0201cf
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
return-void
.end method