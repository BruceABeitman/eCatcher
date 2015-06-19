.class public Lcom/bbm/ui/FooterActionBar;
.super Landroid/widget/LinearLayout;
.source "FooterActionBar.java"
.implements Landroid/view/View$OnClickListener;
.field private final a:I
.field private final b:I
.field private final c:I
.field private d:I
.field private e:I
.field private final f:Ljava/util/Map;
.field private final g:Ljava/util/Map;
.field private h:Lcom/bbm/ui/cj;
.field private final i:Lcom/bbm/ui/ActionBarItem;
.field private final j:Lcom/bbm/ui/ActionBarItem;
.field private final k:Landroid/widget/ImageView;
.field private final l:Landroid/widget/LinearLayout;
.field private final m:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/FooterActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/FooterActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 11
const v6, 0x7f0c0013
const v5, 0x7f0c0012
const v4, 0x7f0c0011
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual {p0}, Lcom/bbm/ui/FooterActionBar;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/FooterActionBar;->a:I
iget v0, p0, Lcom/bbm/ui/FooterActionBar;->a:I
invoke-virtual {p0}, Lcom/bbm/ui/FooterActionBar;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Lcom/bbm/ui/FooterActionBar;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I
move-result v1
sub-int/2addr v0, v1
iput v0, p0, Lcom/bbm/ui/FooterActionBar;->b:I
invoke-virtual {p0}, Lcom/bbm/ui/FooterActionBar;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0c0010
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/FooterActionBar;->c:I
iput v2, p0, Lcom/bbm/ui/FooterActionBar;->d:I
invoke-virtual {p0}, Lcom/bbm/ui/FooterActionBar;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
invoke-virtual {p0}, Lcom/bbm/ui/FooterActionBar;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Lcom/bbm/ui/FooterActionBar;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I
move-result v1
sub-int/2addr v0, v1
iput v0, p0, Lcom/bbm/ui/FooterActionBar;->e:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/FooterActionBar;->f:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/FooterActionBar;->g:Ljava/util/Map;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/FooterActionBar;->h:Lcom/bbm/ui/cj;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03012c
invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
const v0, 0x7f0a05a9
invoke-virtual {p0, v0}, Lcom/bbm/ui/FooterActionBar;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ActionBarItem;
iput-object v0, p0, Lcom/bbm/ui/FooterActionBar;->i:Lcom/bbm/ui/ActionBarItem;
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->i:Lcom/bbm/ui/ActionBarItem;
invoke-virtual {v0, p0}, Lcom/bbm/ui/ActionBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a056d
invoke-virtual {p0, v0}, Lcom/bbm/ui/FooterActionBar;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/FooterActionBar;->k:Landroid/widget/ImageView;
const v0, 0x7f0a05ab
invoke-virtual {p0, v0}, Lcom/bbm/ui/FooterActionBar;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ActionBarItem;
iput-object v0, p0, Lcom/bbm/ui/FooterActionBar;->j:Lcom/bbm/ui/ActionBarItem;
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->j:Lcom/bbm/ui/ActionBarItem;
invoke-virtual {v0, p0}, Lcom/bbm/ui/ActionBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a05a8
invoke-virtual {p0, v0}, Lcom/bbm/ui/FooterActionBar;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/bbm/ui/FooterActionBar;->l:Landroid/widget/LinearLayout;
const v0, 0x7f0a05aa
invoke-virtual {p0, v0}, Lcom/bbm/ui/FooterActionBar;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/FooterActionBar;->m:Landroid/view/View;
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->m:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
iget v1, p0, Lcom/bbm/ui/FooterActionBar;->e:I
int-to-float v1, v1
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v0
sget-object v1, Lcom/bbm/ad;->FooterActionBar:[I
invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v1
const/4 v0, 0x0
const/4 v2, 0x1
:try_start_cc
invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
const/4 v0, 0x1
const/4 v2, -0x1
invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v0
if-ltz v0, :cond_e0
iget-object v2, p0, Lcom/bbm/ui/FooterActionBar;->i:Lcom/bbm/ui/ActionBarItem;
invoke-virtual {v2, v0}, Lcom/bbm/ui/ActionBarItem;->setIcon(I)V
:cond_e0
const/4 v0, 0x2
invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_ec
iget-object v2, p0, Lcom/bbm/ui/FooterActionBar;->i:Lcom/bbm/ui/ActionBarItem;
invoke-virtual {v2, v0}, Lcom/bbm/ui/ActionBarItem;->setText(Ljava/lang/CharSequence;)V
:cond_ec
:try_end_ec
.catchall {:try_start_cc .. :try_end_ec} :catchall_f0
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
return-void
:catchall_f0
move-exception v0
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
throw v0
.end method
.method private b()V
.registers 5
iget-object v1, p0, Lcom/bbm/ui/FooterActionBar;->m:Landroid/view/View;
iget v0, p0, Lcom/bbm/ui/FooterActionBar;->d:I
if-nez v0, :cond_2f
const/4 v0, 0x0
:goto_7
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
iget v0, p0, Lcom/bbm/ui/FooterActionBar;->d:I
if-lez v0, :cond_32
iget v0, p0, Lcom/bbm/ui/FooterActionBar;->e:I
iget v1, p0, Lcom/bbm/ui/FooterActionBar;->d:I
div-int v2, v0, v1
const/4 v0, 0x3
move v1, v0
:goto_16
iget v0, p0, Lcom/bbm/ui/FooterActionBar;->d:I
add-int/lit8 v0, v0, 0x3
if-ge v1, v0, :cond_32
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->l:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
int-to-float v3, v2
iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_16
:cond_2f
const/16 v0, 0x8
goto :goto_7
:cond_32
invoke-virtual {p0}, Lcom/bbm/ui/FooterActionBar;->requestLayout()V
return-void
.end method
.method public final a()V
.registers 4
const/4 v0, 0x0
iput v0, p0, Lcom/bbm/ui/FooterActionBar;->d:I
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
iget-object v2, p0, Lcom/bbm/ui/FooterActionBar;->l:Landroid/widget/LinearLayout;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
goto :goto_d
:cond_25
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->g:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
invoke-virtual {p0}, Lcom/bbm/ui/FooterActionBar;->requestLayout()V
return-void
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->g:Ljava/util/Map;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ActionBarItem;
if-nez v0, :cond_f
:goto_e
return-void
:cond_f
iget v1, p0, Lcom/bbm/ui/FooterActionBar;->d:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/bbm/ui/FooterActionBar;->d:I
iget-object v1, p0, Lcom/bbm/ui/FooterActionBar;->l:Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
iget-object v1, p0, Lcom/bbm/ui/FooterActionBar;->f:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->g:Ljava/util/Map;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0}, Lcom/bbm/ui/FooterActionBar;->b()V
goto :goto_e
.end method
.method public final a(IILjava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->g:Ljava/util/Map;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ActionBarItem;
if-eqz v0, :cond_14
invoke-virtual {v0, p2}, Lcom/bbm/ui/ActionBarItem;->setIcon(I)V
invoke-virtual {v0, p3}, Lcom/bbm/ui/ActionBarItem;->setText(Ljava/lang/CharSequence;)V
:cond_14
return-void
.end method
.method public final a(Lcom/bbm/ui/ActionBarItem;I)V
.registers 8
iget v0, p0, Lcom/bbm/ui/FooterActionBar;->d:I
const/4 v1, 0x3
if-lt v0, v1, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Maximum 3 actions can be added."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->g:Ljava/util/Map;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1a
:goto_19
return-void
:cond_1a
const v0, 0x7f020123
invoke-virtual {p1, v0}, Lcom/bbm/ui/ActionBarItem;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->l:Landroid/widget/LinearLayout;
iget v1, p0, Lcom/bbm/ui/FooterActionBar;->d:I
add-int/lit8 v1, v1, 0x3
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/4 v3, 0x0
const/4 v4, -0x1
invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->f:Ljava/util/Map;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->g:Ljava/util/Map;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1, p0}, Lcom/bbm/ui/ActionBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget v0, p0, Lcom/bbm/ui/FooterActionBar;->d:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/bbm/ui/FooterActionBar;->d:I
invoke-direct {p0}, Lcom/bbm/ui/FooterActionBar;->b()V
goto :goto_19
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/FooterActionBar; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->h:Lcom/bbm/ui/cj;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->i:Lcom/bbm/ui/ActionBarItem;
if-ne p1, v0, :cond_15
const-string v0, "Back Clicked"
const-class v1, Lcom/bbm/ui/FooterActionBar;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->h:Lcom/bbm/ui/cj;
invoke-virtual {v0}, Lcom/bbm/ui/cj;->a()V
:goto_14
:cond_14
const-string v1, " - Lcom/bbm/ui/FooterActionBar; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_15
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->j:Lcom/bbm/ui/ActionBarItem;
if-ne p1, v0, :cond_26
const-string v0, "Overflow Clicked"
const-class v1, Lcom/bbm/ui/FooterActionBar;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->h:Lcom/bbm/ui/cj;
invoke-virtual {v0}, Lcom/bbm/ui/cj;->b()V
goto :goto_14
:cond_26
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->f:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-eqz v0, :cond_14
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "other Clicked: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-class v2, Lcom/bbm/ui/FooterActionBar;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/bbm/ui/FooterActionBar;->h:Lcom/bbm/ui/cj;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/cj;->a(I)V
goto :goto_14
.end method
.method public setActionEnabled(IZ)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->g:Ljava/util/Map;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ActionBarItem;
if-eqz v0, :cond_11
invoke-virtual {v0, p2}, Lcom/bbm/ui/ActionBarItem;->setEnabled(Z)V
:cond_11
return-void
.end method
.method public setActionHidden(IZ)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->g:Ljava/util/Map;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ActionBarItem;
if-eqz v0, :cond_15
if-eqz p2, :cond_16
const/16 v1, 0x8
:goto_12
invoke-virtual {v0, v1}, Lcom/bbm/ui/ActionBarItem;->setVisibility(I)V
:cond_15
return-void
:cond_16
const/4 v1, 0x0
goto :goto_12
.end method
.method public setActionVisibility(II)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->g:Ljava/util/Map;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ActionBarItem;
if-eqz v0, :cond_11
invoke-virtual {v0, p2}, Lcom/bbm/ui/ActionBarItem;->setVisibility(I)V
:cond_11
return-void
.end method
.method public setBackActionAndOverflowEnabled(Z)V
.registers 4
iget-object v1, p0, Lcom/bbm/ui/FooterActionBar;->j:Lcom/bbm/ui/ActionBarItem;
if-eqz p1, :cond_c
const/4 v0, 0x0
:goto_5
invoke-virtual {v1, v0}, Lcom/bbm/ui/ActionBarItem;->setVisibility(I)V
invoke-virtual {p0, p1}, Lcom/bbm/ui/FooterActionBar;->setBackActionEnabled(Z)V
return-void
:cond_c
const/16 v0, 0x8
goto :goto_5
.end method
.method public setBackActionEnabled(Z)V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
if-eqz p1, :cond_24
iget v0, p0, Lcom/bbm/ui/FooterActionBar;->b:I
:goto_7
iput v0, p0, Lcom/bbm/ui/FooterActionBar;->e:I
iget-object v3, p0, Lcom/bbm/ui/FooterActionBar;->l:Landroid/widget/LinearLayout;
if-eqz p1, :cond_27
const/4 v0, 0x3
:goto_e
invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V
iget-object v3, p0, Lcom/bbm/ui/FooterActionBar;->i:Lcom/bbm/ui/ActionBarItem;
if-eqz p1, :cond_2a
move v0, v1
:goto_16
invoke-virtual {v3, v0}, Lcom/bbm/ui/ActionBarItem;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->k:Landroid/widget/ImageView;
if-eqz p1, :cond_2c
:goto_1d
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-direct {p0}, Lcom/bbm/ui/FooterActionBar;->b()V
return-void
:cond_24
iget v0, p0, Lcom/bbm/ui/FooterActionBar;->c:I
goto :goto_7
:cond_27
const/16 v0, 0x11
goto :goto_e
:cond_2a
move v0, v2
goto :goto_16
:cond_2c
move v1, v2
goto :goto_1d
.end method
.method public setFooterActionBarListener(Lcom/bbm/ui/cj;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/FooterActionBar;->h:Lcom/bbm/ui/cj;
return-void
.end method
.method public setMinimalMode(Z)V
.registers 5
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->l:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v0
if-ge v1, v0, :cond_1d
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->l:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
instance-of v2, v0, Lcom/bbm/ui/ActionBarItem;
if-eqz v2, :cond_19
check-cast v0, Lcom/bbm/ui/ActionBarItem;
invoke-virtual {v0, p1}, Lcom/bbm/ui/ActionBarItem;->setMinimalMode(Z)V
:cond_19
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_1d
if-eqz p1, :cond_36
invoke-virtual {p0}, Lcom/bbm/ui/FooterActionBar;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b0014
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
move v1, v0
:goto_2b
iget-object v0, p0, Lcom/bbm/ui/FooterActionBar;->l:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
return-void
:cond_36
invoke-virtual {p0}, Lcom/bbm/ui/FooterActionBar;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b0011
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
move v1, v0
goto :goto_2b
.end method
.method public setOverflowEnabled(Z)V
.registers 4
iget-object v1, p0, Lcom/bbm/ui/FooterActionBar;->j:Lcom/bbm/ui/ActionBarItem;
if-eqz p1, :cond_9
const/4 v0, 0x0
:goto_5
invoke-virtual {v1, v0}, Lcom/bbm/ui/ActionBarItem;->setVisibility(I)V
return-void
:cond_9
const/4 v0, 0x4
goto :goto_5
.end method