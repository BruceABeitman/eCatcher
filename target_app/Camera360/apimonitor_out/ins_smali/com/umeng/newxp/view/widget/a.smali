.class public Lcom/umeng/newxp/view/widget/a;
.super Landroid/widget/RelativeLayout;
.source "GridPage.java"
.field private static final a:Ljava/lang/String; = "GridPage"
.field private b:Lcom/umeng/newxp/view/widget/a$a;
.field private c:Lcom/umeng/newxp/view/GridTemplateConfig;
.field private d:Landroid/content/Context;
.field private e:I
.field private f:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/view/widget/a$a;Lcom/umeng/newxp/view/GridTemplateConfig;)V
.registers 6
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput v0, p0, Lcom/umeng/newxp/view/widget/a;->e:I
iput-object p1, p0, Lcom/umeng/newxp/view/widget/a;->d:Landroid/content/Context;
new-instance v0, Lcom/umeng/common/util/i;
iget-object v1, p0, Lcom/umeng/newxp/view/widget/a;->d:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/umeng/common/util/i;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/umeng/newxp/view/widget/a;->b:Lcom/umeng/newxp/view/widget/a$a;
iput-object p3, p0, Lcom/umeng/newxp/view/widget/a;->c:Lcom/umeng/newxp/view/GridTemplateConfig;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/umeng/newxp/view/widget/a;->f:Ljava/util/List;
invoke-direct {p0}, Lcom/umeng/newxp/view/widget/a;->a()V
return-void
.end method
.method private a()V
.registers 15
const/4 v6, 0x0
const/4 v13, -0x1
iget-object v0, p0, Lcom/umeng/newxp/view/widget/a;->b:Lcom/umeng/newxp/view/widget/a$a;
invoke-virtual {v0}, Lcom/umeng/newxp/view/widget/a$a;->a()I
move-result v7
iget-object v0, p0, Lcom/umeng/newxp/view/widget/a;->c:Lcom/umeng/newxp/view/GridTemplateConfig;
iget v8, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->numColumns:I
iget-object v0, p0, Lcom/umeng/newxp/view/widget/a;->c:Lcom/umeng/newxp/view/GridTemplateConfig;
iget v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->verticalSpacing:I
int-to-float v0, v0
invoke-static {v0}, Lcom/umeng/common/util/i;->a(F)I
move-result v9
const-string/jumbo v0, "GridPage"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "GridPage init params numColums="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "   verticalSpacing="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
rem-int v0, v7, v8
if-nez v0, :cond_41
div-int v0, v7, v8
:goto_3c
move v5, v6
move v2, v6
:goto_3e
if-lt v5, v0, :cond_46
return-void
:cond_41
div-int v0, v7, v8
add-int/lit8 v0, v0, 0x1
goto :goto_3c
:cond_46
new-instance v10, Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/umeng/newxp/view/widget/a;->d:Landroid/content/Context;
invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v3, -0x2
invoke-direct {v1, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
add-int/lit8 v3, v5, 0xa
invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setId(I)V
if-lez v5, :cond_64
const/4 v3, 0x3
invoke-virtual {v10}, Landroid/widget/LinearLayout;->getId()I
move-result v4
add-int/lit8 v4, v4, -0x1
invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
:cond_64
if-lez v9, :cond_6a
if-lez v5, :cond_6a
iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
:cond_6a
invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V
move v1, v2
move v3, v2
:goto_72
add-int v4, v2, v8
if-lt v1, v4, :cond_85
iget-object v1, p0, Lcom/umeng/newxp/view/widget/a;->f:Ljava/util/List;
invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0, v10}, Lcom/umeng/newxp/view/widget/a;->addView(Landroid/view/View;)V
iput v7, p0, Lcom/umeng/newxp/view/widget/a;->e:I
add-int/lit8 v1, v5, 0x1
move v5, v1
move v2, v3
goto :goto_3e
:cond_85
new-instance v11, Landroid/widget/RelativeLayout;
iget-object v4, p0, Lcom/umeng/newxp/view/widget/a;->d:Landroid/content/Context;
invoke-direct {v11, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v4, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v12, 0x3f80
iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F
invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
add-int/lit8 v4, v3, 0x1
if-ge v3, v7, :cond_a5
iget-object v3, p0, Lcom/umeng/newxp/view/widget/a;->b:Lcom/umeng/newxp/view/widget/a$a;
invoke-virtual {v3, v1}, Lcom/umeng/newxp/view/widget/a$a;->a(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
:cond_a5
invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
add-int/lit8 v1, v1, 0x1
move v3, v4
goto :goto_72
.end method
.method public a(Z)V
.registers 5
if-nez p1, :cond_26
iget v0, p0, Lcom/umeng/newxp/view/widget/a;->e:I
iget-object v1, p0, Lcom/umeng/newxp/view/widget/a;->b:Lcom/umeng/newxp/view/widget/a$a;
invoke-virtual {v1}, Lcom/umeng/newxp/view/widget/a$a;->a()I
move-result v1
if-eq v0, v1, :cond_1c
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/a;->removeAllViews()V
invoke-direct {p0}, Lcom/umeng/newxp/view/widget/a;->a()V
const-string/jumbo v0, "GridPage"
const-string/jumbo v1, "data has changed.."
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_1b
return-void
:cond_1c
const-string/jumbo v0, "GridPage"
const-string/jumbo v1, "data has no changed.."
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
:cond_26
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/a;->removeAllViews()V
const-string/jumbo v0, "GridPage"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "pre cast change page.."
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/a;->getChildCount()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/umeng/newxp/view/widget/a;->a()V
const-string/jumbo v0, "GridPage"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "cast change page.."
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/a;->getChildCount()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
.end method