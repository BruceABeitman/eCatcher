.class public Landroid/support/v7/internal/view/menu/n;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/a/a/a;
.field private static final d:[I
.field  a:Ljava/lang/CharSequence;
.field  b:Landroid/graphics/drawable/Drawable;
.field  c:Landroid/view/View;
.field private final e:Landroid/content/Context;
.field private final f:Landroid/content/res/Resources;
.field private g:Z
.field private h:Z
.field private i:Landroid/support/v7/internal/view/menu/o;
.field private j:Ljava/util/ArrayList;
.field private k:Ljava/util/ArrayList;
.field private l:Z
.field private m:Ljava/util/ArrayList;
.field private n:Ljava/util/ArrayList;
.field private o:Z
.field private p:I
.field private q:Landroid/view/ContextMenu$ContextMenuInfo;
.field private r:Z
.field private s:Z
.field private t:Z
.field private u:Z
.field private v:Ljava/util/ArrayList;
.field private w:Ljava/util/concurrent/CopyOnWriteArrayList;
.field private x:Landroid/support/v7/internal/view/menu/r;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x6
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Landroid/support/v7/internal/view/menu/n;->d:[I
return-void
nop
:array_a
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Landroid/support/v7/internal/view/menu/n;->p:I
iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/n;->r:Z
iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/n;->s:Z
iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/n;->t:Z
iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/n;->u:Z
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Landroid/support/v7/internal/view/menu/n;->v:Ljava/util/ArrayList;
new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v2, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->e:Landroid/content/Context;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
iput-object v2, p0, Landroid/support/v7/internal/view/menu/n;->f:Landroid/content/res/Resources;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Landroid/support/v7/internal/view/menu/n;->k:Ljava/util/ArrayList;
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Z
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Landroid/support/v7/internal/view/menu/n;->m:Ljava/util/ArrayList;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Landroid/support/v7/internal/view/menu/n;->n:Ljava/util/ArrayList;
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->o:Z
iget-object v2, p0, Landroid/support/v7/internal/view/menu/n;->f:Landroid/content/res/Resources;
invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v2
iget v2, v2, Landroid/content/res/Configuration;->keyboard:I
if-eq v2, v0, :cond_5c
iget-object v2, p0, Landroid/support/v7/internal/view/menu/n;->f:Landroid/content/res/Resources;
sget v3, Landroid/support/v7/a/d;->d:I
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v2
if-eqz v2, :cond_5c
:goto_59
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->h:Z
return-void
:cond_5c
move v0, v1
goto :goto_59
.end method
.method private static a(Ljava/util/ArrayList;I)I
.registers 4
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_7
if-ltz v1, :cond_1c
invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->b()I
move-result v0
if-gt v0, p1, :cond_18
add-int/lit8 v0, v1, 0x1
:goto_17
return v0
:cond_18
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_7
:cond_1c
const/4 v0, 0x0
goto :goto_17
.end method
.method private a(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/r;
.registers 15
const/4 v2, 0x0
const/4 v4, 0x0
iget-object v5, p0, Landroid/support/v7/internal/view/menu/n;->v:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
invoke-direct {p0, v5, p1, p2}, Landroid/support/v7/internal/view/menu/n;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V
invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_12
move-object v0, v2
:cond_11
:goto_11
return-object v0
:cond_12
invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I
move-result v6
new-instance v7, Landroid/view/KeyCharacterMap$KeyData;
invoke-direct {v7}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V
invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v8
const/4 v0, 0x1
if-ne v8, v0, :cond_2c
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
goto :goto_11
:cond_2c
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->b()Z
move-result v9
move v3, v4
:goto_31
if-ge v3, v8, :cond_67
invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
if-eqz v9, :cond_62
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getAlphabeticShortcut()C
move-result v1
:goto_3f
iget-object v10, v7, Landroid/view/KeyCharacterMap$KeyData;->meta:[C
aget-char v10, v10, v4
if-ne v1, v10, :cond_49
and-int/lit8 v10, v6, 0x2
if-eqz v10, :cond_11
:cond_49
iget-object v10, v7, Landroid/view/KeyCharacterMap$KeyData;->meta:[C
const/4 v11, 0x2
aget-char v10, v10, v11
if-ne v1, v10, :cond_54
and-int/lit8 v10, v6, 0x2
if-nez v10, :cond_11
:cond_54
if-eqz v9, :cond_5e
const/16 v10, 0x8
if-ne v1, v10, :cond_5e
const/16 v1, 0x43
if-eq p1, v1, :cond_11
:cond_5e
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_31
:cond_62
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getNumericShortcut()C
move-result v1
goto :goto_3f
:cond_67
move-object v0, v2
goto :goto_11
.end method
.method private a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 13
const/high16 v0, -0x1
and-int/2addr v0, p3
shr-int/lit8 v0, v0, 0x10
if-ltz v0, :cond_c
sget-object v1, Landroid/support/v7/internal/view/menu/n;->d:[I
array-length v1, v1
if-lt v0, v1, :cond_14
:cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "order does not contain a valid category."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
sget-object v1, Landroid/support/v7/internal/view/menu/n;->d:[I
aget v0, v1, v0
shl-int/lit8 v0, v0, 0x10
const v1, 0xffff
and-int/2addr v1, p3
or-int v5, v0, v1
new-instance v0, Landroid/support/v7/internal/view/menu/r;
iget v7, p0, Landroid/support/v7/internal/view/menu/n;->p:I
move-object v1, p0
move v2, p1
move v3, p2
move v4, p3
move-object v6, p4
invoke-direct/range {v0 .. v7}, Landroid/support/v7/internal/view/menu/r;-><init>(Landroid/support/v7/internal/view/menu/n;IIIILjava/lang/CharSequence;I)V
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->q:Landroid/view/ContextMenu$ContextMenuInfo;
if-eqz v1, :cond_35
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->q:Landroid/view/ContextMenu$ContextMenuInfo;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/r;->a(Landroid/view/ContextMenu$ContextMenuInfo;)V
:cond_35
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
iget-object v2, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-static {v2, v5}, Landroid/support/v7/internal/view/menu/n;->a(Ljava/util/ArrayList;I)I
move-result v2
invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
const/4 v1, 0x1
invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
return-object v0
.end method
.method private a(IZ)V
.registers 4
if-ltz p1, :cond_a
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt p1, v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
if-eqz p2, :cond_a
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
goto :goto_a
.end method
.method private a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->f:Landroid/content/res/Resources;
if-eqz p3, :cond_10
iput-object p3, p0, Landroid/support/v7/internal/view/menu/n;->c:Landroid/view/View;
iput-object v1, p0, Landroid/support/v7/internal/view/menu/n;->a:Ljava/lang/CharSequence;
iput-object v1, p0, Landroid/support/v7/internal/view/menu/n;->b:Landroid/graphics/drawable/Drawable;
:goto_b
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
return-void
:cond_10
if-eqz p1, :cond_14
iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->a:Ljava/lang/CharSequence;
:cond_14
if-eqz p2, :cond_18
iput-object p2, p0, Landroid/support/v7/internal/view/menu/n;->b:Landroid/graphics/drawable/Drawable;
:cond_18
iput-object v1, p0, Landroid/support/v7/internal/view/menu/n;->c:Landroid/view/View;
goto :goto_b
.end method
.method private a(Ljava/util/List;ILandroid/view/KeyEvent;)V
.registers 15
const/16 v10, 0x43
const/4 v3, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->b()Z
move-result v4
invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I
move-result v5
new-instance v6, Landroid/view/KeyCharacterMap$KeyData;
invoke-direct {v6}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V
invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
move-result v0
if-nez v0, :cond_19
if-eq p2, v10, :cond_19
:cond_18
return-void
:cond_19
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v7
move v2, v3
:goto_20
if-ge v2, v7, :cond_18
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->hasSubMenu()Z
move-result v1
if-eqz v1, :cond_39
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getSubMenu()Landroid/view/SubMenu;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/view/menu/n;
invoke-direct {v1, p1, p2, p3}, Landroid/support/v7/internal/view/menu/n;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V
:cond_39
if-eqz v4, :cond_67
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getAlphabeticShortcut()C
move-result v1
:goto_3f
and-int/lit8 v8, v5, 0x5
if-nez v8, :cond_63
if-eqz v1, :cond_63
iget-object v8, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C
aget-char v8, v8, v3
if-eq v1, v8, :cond_5a
iget-object v8, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C
const/4 v9, 0x2
aget-char v8, v8, v9
if-eq v1, v8, :cond_5a
if-eqz v4, :cond_63
const/16 v8, 0x8
if-ne v1, v8, :cond_63
if-ne p2, v10, :cond_63
:cond_5a
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->isEnabled()Z
move-result v1
if-eqz v1, :cond_63
invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_63
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_20
:cond_67
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getNumericShortcut()C
move-result v1
goto :goto_3f
.end method
.method protected final a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/n;
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, p1, v0}, Landroid/support/v7/internal/view/menu/n;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
return-object p0
.end method
.method protected final a(Landroid/view/View;)Landroid/support/v7/internal/view/menu/n;
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/n;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
return-object p0
.end method
.method protected final a(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/n;
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0, v0}, Landroid/support/v7/internal/view/menu/n;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
return-object p0
.end method
.method protected a()Ljava/lang/String;
.registers 2
const-string v0, "android:menu:actionviewstates"
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 9
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->size()I
move-result v3
const/4 v0, 0x0
move v2, v0
move-object v0, v1
:goto_8
if-ge v2, v3, :cond_49
invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/n;->getItem(I)Landroid/view/MenuItem;
move-result-object v4
invoke-static {v4}, Landroid/support/v4/view/x;->a(Landroid/view/MenuItem;)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_34
invoke-virtual {v1}, Landroid/view/View;->getId()I
move-result v5
const/4 v6, -0x1
if-eq v5, v6, :cond_34
if-nez v0, :cond_22
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
:cond_22
invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V
invoke-static {v4}, Landroid/support/v4/view/x;->c(Landroid/view/MenuItem;)Z
move-result v1
if-eqz v1, :cond_34
const-string v1, "android:menu:expandedactionview"
invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I
move-result v5
invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_34
move-object v1, v0
invoke-interface {v4}, Landroid/view/MenuItem;->hasSubMenu()Z
move-result v0
if-eqz v0, :cond_44
invoke-interface {v4}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ag;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/ag;->a(Landroid/os/Bundle;)V
:cond_44
add-int/lit8 v0, v2, 0x1
move v2, v0
move-object v0, v1
goto :goto_8
:cond_49
if-eqz v0, :cond_52
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
:cond_52
return-void
.end method
.method public final a(Landroid/support/v7/internal/view/menu/aa;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->e:Landroid/content/Context;
invoke-interface {p1, v0, p0}, Landroid/support/v7/internal/view/menu/aa;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->o:Z
return-void
.end method
.method public a(Landroid/support/v7/internal/view/menu/o;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->i:Landroid/support/v7/internal/view/menu/o;
return-void
.end method
.method final a(Landroid/view/MenuItem;)V
.registers 8
const/4 v2, 0x0
invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I
move-result v4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v5
move v3, v2
:goto_c
if-ge v3, v5, :cond_34
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getGroupId()I
move-result v1
if-ne v1, v4, :cond_2e
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->f()Z
move-result v1
if-eqz v1, :cond_2e
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->isCheckable()Z
move-result v1
if-eqz v1, :cond_2e
if-ne v0, p1, :cond_32
const/4 v1, 0x1
:goto_2b
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/r;->b(Z)V
:cond_2e
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_c
:cond_32
move v1, v2
goto :goto_2b
:cond_34
return-void
.end method
.method final a(Z)V
.registers 5
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->u:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->u:Z
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/view/menu/aa;
if-nez v1, :cond_28
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_e
:cond_28
invoke-interface {v1, p0, p1}, Landroid/support/v7/internal/view/menu/aa;->a(Landroid/support/v7/internal/view/menu/n;Z)V
goto :goto_e
:cond_2c
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->u:Z
goto :goto_4
.end method
.method  a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->i:Landroid/support/v7/internal/view/menu/o;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->i:Landroid/support/v7/internal/view/menu/o;
invoke-interface {v0, p2}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/view/MenuItem;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public a(Landroid/support/v7/internal/view/menu/r;)Z
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
move-result v1
if-eqz v1, :cond_a
:goto_9
:cond_9
return v0
:cond_a
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->g()V
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
move v2, v0
:goto_14
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/view/menu/aa;
if-nez v1, :cond_2e
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_14
:cond_2e
invoke-interface {v1, p1}, Landroid/support/v7/internal/view/menu/aa;->b(Landroid/support/v7/internal/view/menu/r;)Z
move-result v0
if-eqz v0, :cond_3c
:goto_34
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->h()V
if-eqz v0, :cond_9
iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->x:Landroid/support/v7/internal/view/menu/r;
goto :goto_9
:cond_3c
move v2, v0
goto :goto_14
:cond_3e
move v0, v2
goto :goto_34
.end method
.method public final a(Landroid/view/MenuItem;I)Z
.registers 10
const/4 v6, 0x1
const/4 v1, 0x0
check-cast p1, Landroid/support/v7/internal/view/menu/r;
if-eqz p1, :cond_c
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->isEnabled()Z
move-result v0
if-nez v0, :cond_e
:cond_c
move v0, v1
:cond_d
:goto_d
return v0
:cond_e
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->a()Z
move-result v4
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->l()Landroid/support/v4/view/l;
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->m()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->expandActionView()Z
move-result v0
or-int/2addr v0, v4
if-eqz v0, :cond_d
invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/n;->a(Z)V
goto :goto_d
:cond_26
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->hasSubMenu()Z
move-result v0
if-eqz v0, :cond_80
invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/n;->a(Z)V
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->hasSubMenu()Z
move-result v0
if-nez v0, :cond_3f
new-instance v0, Landroid/support/v7/internal/view/menu/ag;
iget-object v2, p0, Landroid/support/v7/internal/view/menu/n;->e:Landroid/content/Context;
invoke-direct {v0, v2, p0, p1}, Landroid/support/v7/internal/view/menu/ag;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)V
invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/r;->a(Landroid/support/v7/internal/view/menu/ag;)V
:cond_3f
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->getSubMenu()Landroid/view/SubMenu;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ag;
iget-object v2, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
move-result v2
if-eqz v2, :cond_55
:goto_4d
or-int v0, v4, v1
if-nez v0, :cond_d
invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/n;->a(Z)V
goto :goto_d
:cond_55
iget-object v2, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v5
move v3, v1
:goto_5c
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_7e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/internal/view/menu/aa;
if-nez v2, :cond_76
iget-object v2, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_5c
:cond_76
if-nez v3, :cond_89
invoke-interface {v2, v0}, Landroid/support/v7/internal/view/menu/aa;->a(Landroid/support/v7/internal/view/menu/ag;)Z
move-result v1
:goto_7c
move v3, v1
goto :goto_5c
:cond_7e
move v1, v3
goto :goto_4d
:cond_80
and-int/lit8 v0, p2, 0x1
if-nez v0, :cond_87
invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/n;->a(Z)V
:cond_87
move v0, v4
goto :goto_d
:cond_89
move v1, v3
goto :goto_7c
.end method
.method public add(I)Landroid/view/MenuItem;
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->f:Landroid/content/res/Resources;
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v1, v1, v1, v0}, Landroid/support/v7/internal/view/menu/n;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public add(IIII)Landroid/view/MenuItem;
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->f:Landroid/content/res/Resources;
invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/view/menu/n;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/n;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/n;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
.registers 18
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->e:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v4
const/4 v0, 0x0
invoke-virtual {v4, p4, p5, p6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
move-result-object v5
if-eqz v5, :cond_61
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v0
move v3, v0
:goto_12
and-int/lit8 v0, p7, 0x1
if-nez v0, :cond_19
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/n;->removeGroup(I)V
:cond_19
const/4 v0, 0x0
move v2, v0
:goto_1b
if-ge v2, v3, :cond_69
invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ResolveInfo;
new-instance v6, Landroid/content/Intent;
iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I
if-gez v1, :cond_64
move-object v1, p6
:goto_2a
invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
new-instance v1, Landroid/content/ComponentName;
iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {p0, p1, p2, p3, v1}, Landroid/support/v7/internal/view/menu/n;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v1
invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v7
invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
move-result-object v1
invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
move-result-object v1
if-eqz p8, :cond_5d
iget v6, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I
if-ltz v6, :cond_5d
iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I
aput-object v1, p8, v0
:cond_5d
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_1b
:cond_61
const/4 v0, 0x0
move v3, v0
goto :goto_12
:cond_64
iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I
aget-object v1, p5, v1
goto :goto_2a
:cond_69
return v3
.end method
.method public addSubMenu(I)Landroid/view/SubMenu;
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->f:Landroid/content/res/Resources;
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/internal/view/menu/n;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public addSubMenu(IIII)Landroid/view/SubMenu;
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->f:Landroid/content/res/Resources;
invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/view/menu/n;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
.registers 8
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/n;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
new-instance v1, Landroid/support/v7/internal/view/menu/ag;
iget-object v2, p0, Landroid/support/v7/internal/view/menu/n;->e:Landroid/content/Context;
invoke-direct {v1, v2, p0, v0}, Landroid/support/v7/internal/view/menu/ag;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)V
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/r;->a(Landroid/support/v7/internal/view/menu/ag;)V
return-object v1
.end method
.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/n;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public final b(Landroid/os/Bundle;)V
.registers 9
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->size()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_11
if-ge v1, v3, :cond_3a
invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/n;->getItem(I)Landroid/view/MenuItem;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/x;->a(Landroid/view/MenuItem;)Landroid/view/View;
move-result-object v4
if-eqz v4, :cond_27
invoke-virtual {v4}, Landroid/view/View;->getId()I
move-result v5
const/4 v6, -0x1
if-eq v5, v6, :cond_27
invoke-virtual {v4, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V
:cond_27
invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z
move-result v4
if-eqz v4, :cond_36
invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ag;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/ag;->b(Landroid/os/Bundle;)V
:cond_36
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_11
:cond_3a
const-string v0, "android:menu:expandedactionview"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_2
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
if-eqz v0, :cond_2
invoke-static {v0}, Landroid/support/v4/view/x;->b(Landroid/view/MenuItem;)Z
goto :goto_2
.end method
.method public final b(Landroid/support/v7/internal/view/menu/aa;)V
.registers 5
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_6
:cond_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/view/menu/aa;
if-eqz v1, :cond_1c
if-ne v1, p1, :cond_6
:cond_1c
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_6
:cond_22
return-void
.end method
.method final b(Z)V
.registers 5
const/4 v1, 0x1
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->r:Z
if-nez v0, :cond_3e
if-eqz p1, :cond_b
iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/n;->l:Z
iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/n;->o:Z
:cond_b
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_3d
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->g()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/view/menu/aa;
if-nez v1, :cond_36
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_1c
:cond_36
invoke-interface {v1, p1}, Landroid/support/v7/internal/view/menu/aa;->c(Z)V
goto :goto_1c
:cond_3a
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->h()V
:goto_3d
:cond_3d
return-void
:cond_3e
iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/n;->s:Z
goto :goto_3d
.end method
.method  b()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->g:Z
return v0
.end method
.method public b(Landroid/support/v7/internal/view/menu/r;)Z
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
move-result v1
if-nez v1, :cond_d
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->x:Landroid/support/v7/internal/view/menu/r;
if-eq v1, p1, :cond_e
:cond_d
:goto_d
return v0
:cond_e
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->g()V
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
move v2, v0
:goto_18
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_43
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/view/menu/aa;
if-nez v1, :cond_32
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_18
:cond_32
invoke-interface {v1, p1}, Landroid/support/v7/internal/view/menu/aa;->c(Landroid/support/v7/internal/view/menu/r;)Z
move-result v0
if-eqz v0, :cond_41
:goto_38
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->h()V
if-eqz v0, :cond_d
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/v7/internal/view/menu/n;->x:Landroid/support/v7/internal/view/menu/r;
goto :goto_d
:cond_41
move v2, v0
goto :goto_18
:cond_43
move v0, v2
goto :goto_38
.end method
.method public c()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->h:Z
return v0
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->x:Landroid/support/v7/internal/view/menu/r;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->x:Landroid/support/v7/internal/view/menu/r;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/support/v7/internal/view/menu/r;)Z
:cond_9
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
return-void
.end method
.method public clearHeader()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/view/menu/n;->b:Landroid/graphics/drawable/Drawable;
iput-object v0, p0, Landroid/support/v7/internal/view/menu/n;->a:Ljava/lang/CharSequence;
iput-object v0, p0, Landroid/support/v7/internal/view/menu/n;->c:Landroid/view/View;
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
return-void
.end method
.method public close()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->a(Z)V
return-void
.end method
.method final d()Landroid/content/res/Resources;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->f:Landroid/content/res/Resources;
return-object v0
.end method
.method public final e()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->e:Landroid/content/Context;
return-object v0
.end method
.method public final f()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->i:Landroid/support/v7/internal/view/menu/o;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->i:Landroid/support/v7/internal/view/menu/o;
invoke-interface {v0, p0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/n;)V
:cond_9
return-void
.end method
.method public findItem(I)Landroid/view/MenuItem;
.registers 6
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_6
if-ge v1, v2, :cond_2b
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getItemId()I
move-result v3
if-ne v3, p1, :cond_17
:cond_16
:goto_16
return-object v0
:cond_17
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->hasSubMenu()Z
move-result v3
if-eqz v3, :cond_27
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getSubMenu()Landroid/view/SubMenu;
move-result-object v0
invoke-interface {v0, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
if-nez v0, :cond_16
:cond_27
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_2b
const/4 v0, 0x0
goto :goto_16
.end method
.method public final g()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->r:Z
if-nez v0, :cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->r:Z
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Z
:cond_a
return-void
.end method
.method public getItem(I)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/MenuItem;
return-object v0
.end method
.method public final h()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/n;->r:Z
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Z
if-eqz v0, :cond_d
iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/n;->s:Z
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
:cond_d
return-void
.end method
.method public hasVisibleItems()Z
.registers 5
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->size()I
move-result v3
move v2, v1
:goto_6
if-ge v2, v3, :cond_1c
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->isVisible()Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_6
:cond_1c
move v0, v1
goto :goto_17
.end method
.method final i()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Z
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
return-void
.end method
.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/n;->a(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/r;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method final j()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->o:Z
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
return-void
.end method
.method final k()Ljava/util/ArrayList;
.registers 6
const/4 v2, 0x0
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Z
if-nez v0, :cond_8
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->k:Ljava/util/ArrayList;
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v3
move v1, v2
:goto_14
if-ge v1, v3, :cond_2d
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->isVisible()Z
move-result v4
if-eqz v4, :cond_29
iget-object v4, p0, Landroid/support/v7/internal/view/menu/n;->k:Ljava/util/ArrayList;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_29
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:cond_2d
iput-boolean v2, p0, Landroid/support/v7/internal/view/menu/n;->l:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->o:Z
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->k:Ljava/util/ArrayList;
goto :goto_7
.end method
.method public final l()V
.registers 7
const/4 v3, 0x0
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->o:Z
if-nez v0, :cond_6
:goto_5
return-void
:cond_6
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v4
move v2, v3
:goto_d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/view/menu/aa;
if-nez v1, :cond_27
iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->w:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_d
:cond_27
invoke-interface {v1}, Landroid/support/v7/internal/view/menu/aa;->i()Z
move-result v0
or-int/2addr v0, v2
move v2, v0
goto :goto_d
:cond_2e
if-eqz v2, :cond_60
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->m:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->n:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->k()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v4
move v1, v3
:goto_43
if-ge v1, v4, :cond_73
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->h()Z
move-result v5
if-eqz v5, :cond_5a
iget-object v5, p0, Landroid/support/v7/internal/view/menu/n;->m:Ljava/util/ArrayList;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_56
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_43
:cond_5a
iget-object v5, p0, Landroid/support/v7/internal/view/menu/n;->n:Ljava/util/ArrayList;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_56
:cond_60
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->m:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->n:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->n:Ljava/util/ArrayList;
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->k()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
:cond_73
iput-boolean v3, p0, Landroid/support/v7/internal/view/menu/n;->o:Z
goto :goto_5
.end method
.method final m()Ljava/util/ArrayList;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->l()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->m:Ljava/util/ArrayList;
return-object v0
.end method
.method final n()Ljava/util/ArrayList;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->l()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->n:Ljava/util/ArrayList;
return-object v0
.end method
.method public o()Landroid/support/v7/internal/view/menu/n;
.registers 1
return-object p0
.end method
.method final p()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->t:Z
return v0
.end method
.method public performIdentifierAction(II)Z
.registers 4
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/n;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
invoke-virtual {p0, v0, p2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z
move-result v0
return v0
.end method
.method public performShortcut(ILandroid/view/KeyEvent;I)Z
.registers 6
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/n;->a(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/r;
move-result-object v1
const/4 v0, 0x0
if-eqz v1, :cond_b
invoke-virtual {p0, v1, p3}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z
move-result v0
:cond_b
and-int/lit8 v1, p3, 0x2
if-eqz v1, :cond_13
const/4 v1, 0x1
invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/n;->a(Z)V
:cond_13
return v0
.end method
.method public final q()Landroid/support/v7/internal/view/menu/r;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->x:Landroid/support/v7/internal/view/menu/r;
return-object v0
.end method
.method public removeGroup(I)V
.registers 7
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->size()I
move-result v3
move v2, v1
:goto_6
if-ge v2, v3, :cond_3c
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getGroupId()I
move-result v0
if-ne v0, p1, :cond_39
move v3, v2
:goto_17
if-ltz v3, :cond_43
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
sub-int v4, v0, v3
move v0, v1
:goto_22
add-int/lit8 v2, v0, 0x1
if-ge v0, v4, :cond_3f
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getGroupId()I
move-result v0
if-ne v0, p1, :cond_3f
invoke-direct {p0, v3, v1}, Landroid/support/v7/internal/view/menu/n;->a(IZ)V
move v0, v2
goto :goto_22
:cond_39
add-int/lit8 v2, v2, 0x1
goto :goto_6
:cond_3c
const/4 v0, -0x1
move v3, v0
goto :goto_17
:cond_3f
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
:cond_43
return-void
.end method
.method public removeItem(I)V
.registers 5
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->size()I
move-result v2
const/4 v1, 0x0
:goto_5
if-ge v1, v2, :cond_1e
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getItemId()I
move-result v0
if-ne v0, p1, :cond_1b
move v0, v1
:goto_16
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/view/menu/n;->a(IZ)V
return-void
:cond_1b
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1e
const/4 v0, -0x1
goto :goto_16
.end method
.method public setGroupCheckable(IZZ)V
.registers 8
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_8
if-ge v1, v2, :cond_22
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getGroupId()I
move-result v3
if-ne v3, p1, :cond_1e
invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/r;->a(Z)V
invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/r;->setCheckable(Z)Landroid/view/MenuItem;
:cond_1e
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_22
return-void
.end method
.method public setGroupEnabled(IZ)V
.registers 7
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_8
if-ge v1, v2, :cond_1f
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getGroupId()I
move-result v3
if-ne v3, p1, :cond_1b
invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/r;->setEnabled(Z)Landroid/view/MenuItem;
:cond_1b
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_1f
return-void
.end method
.method public setGroupVisible(IZ)V
.registers 9
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v4
move v3, v0
move v2, v0
:goto_a
if-ge v3, v4, :cond_26
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getGroupId()I
move-result v5
if-ne v5, p1, :cond_2c
invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/r;->c(Z)Z
move-result v0
if-eqz v0, :cond_2c
move v0, v1
:goto_21
add-int/lit8 v2, v3, 0x1
move v3, v2
move v2, v0
goto :goto_a
:cond_26
if-eqz v2, :cond_2b
invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
:cond_2b
return-void
:cond_2c
move v0, v2
goto :goto_21
.end method
.method public setQwertyMode(Z)V
.registers 3
iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/n;->g:Z
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
return-void
.end method
.method public size()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method