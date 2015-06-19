.class public final Lcom/spotify/mobile/android/ui/adapter/ac;
.super Landroid/support/v4/widget/b;
.source "SourceFile"
.field private static final j:Lcom/spotify/mobile/android/ui/adapter/z;
.field private final k:Ljava/lang/String;
.field private final l:Ljava/lang/String;
.field private final m:Ljava/lang/String;
.field private final n:I
.field private final o:Landroid/content/res/ColorStateList;
.field private final p:Lcom/spotify/mobile/android/ui/contextmenu/f;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/ac$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/adapter/ac$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/ac;->j:Lcom/spotify/mobile/android/ui/adapter/z;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Landroid/support/v4/widget/b;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/ac$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/adapter/ac$2;-><init>(Lcom/spotify/mobile/android/ui/adapter/ac;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->p:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0f02d0
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->k:Ljava/lang/String;
const v0, 0x7f0f02b7
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->l:Ljava/lang/String;
const v0, 0x7f0f02b8
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->m:Ljava/lang/String;
const v0, 0x7f01018f
invoke-static {p1, v0}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->o:Landroid/content/res/ColorStateList;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f09007e
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->n:I
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/adapter/ac;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->d:Landroid/content/Context;
return-object v0
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
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->k:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->l:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->m:Ljava/lang/String;
invoke-virtual {v0, p3, v1, v2, v3}, Lcom/spotify/mobile/android/model/h;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/ac;->j:Lcom/spotify/mobile/android/ui/adapter/z;
invoke-static {p2, p1, v0, v1}, Lcom/spotify/mobile/android/ui/adapter/aa;->a(Landroid/content/Context;Lcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/model/h;Lcom/spotify/mobile/android/ui/adapter/z;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/model/h;->isQueued()Z
move-result v1
if-eqz v1, :cond_3d
invoke-virtual {p1}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;
move-result-object v1
iget v2, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->n:I
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
:goto_24
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->d:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->p:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
const v1, 0x7f0a013c
new-instance v2, Lcom/spotify/mobile/android/ui/contextmenu/a/a;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->p:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v2, v3, v0}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
invoke-virtual {p1, v1, v2}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(ILjava/lang/Object;)V
return-void
:cond_3d
invoke-virtual {p1}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/ac;->o:Landroid/content/res/ColorStateList;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
goto :goto_24
.end method