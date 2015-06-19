.class final Lcom/flurry/android/p;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:Landroid/view/View;
.field private b:Ljava/util/List;
.field private c:Z
.field private synthetic d:Lcom/flurry/android/CatalogActivity;
.method public constructor <init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V
.registers 5
const/4 v1, 0x1
iput-object p1, p0, Lcom/flurry/android/p;->d:Lcom/flurry/android/CatalogActivity;
invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/flurry/android/p;->b:Ljava/util/List;
iput-boolean v1, p0, Lcom/flurry/android/p;->c:Z
invoke-virtual {p0, v1}, Lcom/flurry/android/p;->setOrientation(I)V
const/16 v0, 0x30
invoke-virtual {p0, v0}, Lcom/flurry/android/p;->setGravity(I)V
new-instance v0, Lcom/flurry/android/l;
invoke-direct {v0, p1, p2}, Lcom/flurry/android/l;-><init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V
iput-object v0, p0, Lcom/flurry/android/p;->a:Landroid/view/View;
iget-object v0, p0, Lcom/flurry/android/p;->a:Landroid/view/View;
const/16 v1, 0x2712
invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V
iget-object v0, p0, Lcom/flurry/android/p;->a:Landroid/view/View;
invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0, p2}, Lcom/flurry/android/p;->a(Landroid/content/Context;)Ljava/util/List;
move-result-object v0
iget-boolean v1, p0, Lcom/flurry/android/p;->c:Z
invoke-direct {p0, v0, v1}, Lcom/flurry/android/p;->a(Ljava/util/List;Z)V
return-void
.end method
.method private a(Ljava/util/List;Z)V
.registers 7
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/flurry/android/p;->removeAllViews()V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
const/4 v0, -0x1
const/4 v2, -0x2
invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
iget-object v0, p0, Lcom/flurry/android/p;->a:Landroid/view/View;
invoke-virtual {p0, v0, v1}, Lcom/flurry/android/p;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
if-eqz p1, :cond_1f
iget-object v0, p0, Lcom/flurry/android/p;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/flurry/android/p;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_1f
if-eqz p2, :cond_37
iget-object v0, p0, Lcom/flurry/android/p;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_27
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_37
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/android/r;
invoke-virtual {p0, v0, v1}, Lcom/flurry/android/p;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_27
:cond_37
invoke-virtual {p0}, Lcom/flurry/android/p;->refreshDrawableState()V
return-void
.end method
.method final a(Landroid/content/Context;)Ljava/util/List;
.registers 8
const/4 v5, 0x0
const/4 v4, 0x1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_8
const/4 v1, 0x3
if-ge v0, v1, :cond_24
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "hook"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_24
iget-object v0, p0, Lcom/flurry/android/p;->d:Lcom/flurry/android/CatalogActivity;
invoke-static {v0}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;
move-result-object v0
if-nez v0, :cond_52
move-object v0, v5
:goto_2d
if-nez v0, :cond_5b
move-object v3, v5
:goto_30
iget-object v0, p0, Lcom/flurry/android/p;->d:Lcom/flurry/android/CatalogActivity;
invoke-static {v0}, Lcom/flurry/android/CatalogActivity;->c(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/n;
move-result-object v0
move-object v1, p1
move v5, v4
invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/n;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;IZ)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_40
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_63
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/android/r;
iget-object v3, p0, Lcom/flurry/android/p;->d:Lcom/flurry/android/CatalogActivity;
invoke-virtual {v0, v3}, Lcom/flurry/android/r;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_40
:cond_52
iget-object v0, p0, Lcom/flurry/android/p;->d:Lcom/flurry/android/CatalogActivity;
invoke-static {v0}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;
move-result-object v0
iget-object v0, v0, Lcom/flurry/android/y;->b:Lcom/flurry/android/o;
goto :goto_2d
:cond_5b
iget-wide v0, v0, Lcom/flurry/android/o;->a:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
move-object v3, v0
goto :goto_30
:cond_63
return-object v1
.end method
.method final a()V
.registers 3
iget-boolean v0, p0, Lcom/flurry/android/p;->c:Z
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_5
iput-boolean v0, p0, Lcom/flurry/android/p;->c:Z
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/flurry/android/p;->c:Z
invoke-direct {p0, v0, v1}, Lcom/flurry/android/p;->a(Ljava/util/List;Z)V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_5
.end method
.method final a(Ljava/util/List;)V
.registers 3
iget-boolean v0, p0, Lcom/flurry/android/p;->c:Z
invoke-direct {p0, p1, v0}, Lcom/flurry/android/p;->a(Ljava/util/List;Z)V
return-void
.end method
.method final b()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/flurry/android/p;->b:Ljava/util/List;
return-object v0
.end method