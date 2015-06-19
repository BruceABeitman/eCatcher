.class public Lcom/twidroid/ui/a/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ListAdapter;
.field  a:Lcom/twidroid/ui/a/f;
.field  b:Landroid/database/sqlite/SQLiteDatabase;
.field private c:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/twidroid/ui/a/e;->c:Landroid/content/Context;
new-instance v0, Lcom/twidroid/ui/a/f;
invoke-direct {v0, p0}, Lcom/twidroid/ui/a/f;-><init>(Lcom/twidroid/ui/a/e;)V
iput-object v0, p0, Lcom/twidroid/ui/a/e;->a:Lcom/twidroid/ui/a/f;
iput-object p2, p0, Lcom/twidroid/ui/a/e;->b:Landroid/database/sqlite/SQLiteDatabase;
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/e;->a:Lcom/twidroid/ui/a/f;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/twidroid/ui/a/e;->a:Lcom/twidroid/ui/a/f;
iget-object v0, v0, Lcom/twidroid/ui/a/f;->a:Ljava/util/ArrayList;
if-nez v0, :cond_c
:cond_a
const/4 v0, 0x0
:goto_b
return v0
:cond_c
iget-object v0, p0, Lcom/twidroid/ui/a/e;->a:Lcom/twidroid/ui/a/f;
iget-object v0, v0, Lcom/twidroid/ui/a/f;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
goto :goto_b
.end method
.method public getFilter()Landroid/widget/Filter;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/e;->a:Lcom/twidroid/ui/a/f;
return-object v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/twidroid/ui/a/e;->a:Lcom/twidroid/ui/a/f;
iget-object v0, v0, Lcom/twidroid/ui/a/f;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9
move-result-object v0
:goto_8
return-object v0
:catch_9
move-exception v0
const/4 v0, 0x0
goto :goto_8
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v3, 0x5
new-instance v1, Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/ui/a/e;->c:Landroid/content/Context;
invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const/16 v0, 0xf
const/16 v2, 0xa
invoke-virtual {v1, v3, v0, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V
const/16 v0, 0x3c
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V
const/high16 v0, 0x4180
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V
const v0, 0x7f080025
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
:try_start_1f
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/e;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:try_end_28
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_29
:goto_28
return-object v1
:catch_29
move-exception v0
goto :goto_28
.end method