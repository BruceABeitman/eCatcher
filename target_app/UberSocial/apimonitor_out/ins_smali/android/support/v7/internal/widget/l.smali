.class  Landroid/support/v7/internal/widget/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field public static final a:I = 0x7fffffff
.field public static final b:I = 0x4
.field private static final d:I = 0x0
.field private static final e:I = 0x1
.field private static final f:I = 0x3
.field final synthetic c:Landroid/support/v7/internal/widget/ActivityChooserView;
.field private g:Landroid/support/v7/internal/widget/d;
.field private h:I
.field private i:Z
.field private j:Z
.field private k:Z
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/l;->c:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/4 v0, 0x4
iput v0, p0, Landroid/support/v7/internal/widget/l;->h:I
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;Landroid/support/v7/internal/widget/ActivityChooserView$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/l;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
return-void
.end method
.method public a()I
.registers 10
const/4 v2, 0x0
const/4 v0, 0x0
iget v4, p0, Landroid/support/v7/internal/widget/l;->h:I
const v1, 0x7fffffff
iput v1, p0, Landroid/support/v7/internal/widget/l;->h:I
invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v6
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->getCount()I
move-result v7
move-object v1, v2
move v3, v0
:goto_17
if-ge v0, v7, :cond_2b
invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/internal/widget/l;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V
invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I
move-result v8
invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I
move-result v3
add-int/lit8 v0, v0, 0x1
goto :goto_17
:cond_2b
iput v4, p0, Landroid/support/v7/internal/widget/l;->h:I
return v3
.end method
.method public a(I)V
.registers 3
iget v0, p0, Landroid/support/v7/internal/widget/l;->h:I
if-eq v0, p1, :cond_9
iput p1, p0, Landroid/support/v7/internal/widget/l;->h:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->notifyDataSetChanged()V
:cond_9
return-void
.end method
.method public a(Landroid/support/v7/internal/widget/d;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->c:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/l;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->f()Landroid/support/v7/internal/widget/d;
move-result-object v0
if-eqz v0, :cond_1d
iget-object v1, p0, Landroid/support/v7/internal/widget/l;->c:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShown()Z
move-result v1
if-eqz v1, :cond_1d
iget-object v1, p0, Landroid/support/v7/internal/widget/l;->c:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->i(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/d;->unregisterObserver(Ljava/lang/Object;)V
:cond_1d
iput-object p1, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/support/v7/internal/widget/d;
if-eqz p1, :cond_32
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->c:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShown()Z
move-result v0
if-eqz v0, :cond_32
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->c:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->i(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/d;->registerObserver(Ljava/lang/Object;)V
:cond_32
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->notifyDataSetChanged()V
return-void
.end method
.method public a(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->k:Z
if-eq v0, p1, :cond_9
iput-boolean p1, p0, Landroid/support/v7/internal/widget/l;->k:Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->notifyDataSetChanged()V
:cond_9
return-void
.end method
.method public a(ZZ)V
.registers 4
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->i:Z
if-ne v0, p1, :cond_8
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->j:Z
if-eq v0, p2, :cond_f
:cond_8
iput-boolean p1, p0, Landroid/support/v7/internal/widget/l;->i:Z
iput-boolean p2, p0, Landroid/support/v7/internal/widget/l;->j:Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->notifyDataSetChanged()V
:cond_f
return-void
.end method
.method public b()Landroid/content/pm/ResolveInfo;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/support/v7/internal/widget/d;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/d;->c()Landroid/content/pm/ResolveInfo;
move-result-object v0
return-object v0
.end method
.method public c()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/support/v7/internal/widget/d;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/d;->b()I
move-result v0
return v0
.end method
.method public d()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/support/v7/internal/widget/d;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/d;->e()I
move-result v0
return v0
.end method
.method public e()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/l;->h:I
return v0
.end method
.method public f()Landroid/support/v7/internal/widget/d;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/support/v7/internal/widget/d;
return-object v0
.end method
.method public g()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->i:Z
return v0
.end method
.method public getCount()I
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/support/v7/internal/widget/d;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/d;->b()I
move-result v0
iget-boolean v1, p0, Landroid/support/v7/internal/widget/l;->i:Z
if-nez v1, :cond_14
iget-object v1, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/support/v7/internal/widget/d;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/d;->c()Landroid/content/pm/ResolveInfo;
move-result-object v1
if-eqz v1, :cond_14
add-int/lit8 v0, v0, -0x1
:cond_14
iget v1, p0, Landroid/support/v7/internal/widget/l;->h:I
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
iget-boolean v1, p0, Landroid/support/v7/internal/widget/l;->k:Z
if-eqz v1, :cond_20
add-int/lit8 v0, v0, 0x1
:cond_20
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/l;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_24
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:pswitch_d
const/4 v0, 0x0
:goto_e
return-object v0
:pswitch_f
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->i:Z
if-nez v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/support/v7/internal/widget/d;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/d;->c()Landroid/content/pm/ResolveInfo;
move-result-object v0
if-eqz v0, :cond_1d
add-int/lit8 p1, p1, 0x1
:cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/support/v7/internal/widget/d;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/d;->a(I)Landroid/content/pm/ResolveInfo;
move-result-object v0
goto :goto_e
:pswitch_data_24
.packed-switch 0x0
:pswitch_f
:pswitch_d
.end packed-switch
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 3
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->k:Z
if-eqz v0, :cond_e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->getCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ne p1, v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/l;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_96
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:pswitch_f
if-eqz p2, :cond_17
invoke-virtual {p2}, Landroid/view/View;->getId()I
move-result v0
if-eq v0, v3, :cond_41
:cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->c:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Landroid/support/v7/a/k;->abc_activity_chooser_view_list_item:I
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
invoke-virtual {p2, v3}, Landroid/view/View;->setId(I)V
sget v0, Landroid/support/v7/a/i;->title:I
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Landroid/support/v7/internal/widget/l;->c:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v1
sget v2, Landroid/support/v7/a/l;->abc_activity_chooser_view_see_all:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_41
:cond_41
return-object p2
:pswitch_42
if-eqz p2, :cond_4c
invoke-virtual {p2}, Landroid/view/View;->getId()I
move-result v0
sget v1, Landroid/support/v7/a/i;->list_item:I
if-eq v0, v1, :cond_5c
:cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->c:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Landroid/support/v7/a/k;->abc_activity_chooser_view_list_item:I
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
:cond_5c
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->c:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
sget v0, Landroid/support/v7/a/i;->icon:I
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/l;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/pm/ResolveInfo;
invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
sget v0, Landroid/support/v7/a/i;->title:I
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->i:Z
if-eqz v0, :cond_41
if-nez p1, :cond_41
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->j:Z
if-eqz v0, :cond_41
goto :goto_41
nop
:pswitch_data_96
.packed-switch 0x0
:pswitch_42
:pswitch_f
.end packed-switch
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x3
return v0
.end method