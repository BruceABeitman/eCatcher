.class final Lcom/instagram/feed/d/v;
.super Ljava/lang/Object;
.source "MediaRenderer.java"
.field private static final a:Ljava/text/DecimalFormat;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/text/DecimalFormat;
invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V
sput-object v0, Lcom/instagram/feed/d/v;->a:Ljava/text/DecimalFormat;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V
sget-object v0, Lcom/instagram/feed/d/v;->a:Ljava/text/DecimalFormat;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V
return-void
.end method
.method private static a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;ILcom/instagram/feed/d/b;Landroid/text/TextPaint;I)I
.registers 11
invoke-virtual {p3}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v1, Lcom/instagram/feed/d/a;
const-string v2, "comment_owner"
invoke-virtual {p3}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {p3}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;
move-result-object v4
invoke-direct {v1, v2, v3, v4}, Lcom/instagram/feed/d/a;-><init>(Ljava/lang/String;Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;)V
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
add-int/2addr v0, p2
const/16 v2, 0x21
invoke-virtual {p1, v1, p2, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
const-string v0, " "
invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
move-result-object v0
invoke-static {}, Lcom/instagram/feed/d/f;->a()Lcom/instagram/feed/d/f;
move-result-object v1
invoke-virtual {v1, p0, p3, p4, p5}, Lcom/instagram/feed/d/f;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/b;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
move-result-object v0
const-string v1, "\n"
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I
move-result v0
return v0
.end method
.method private static a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/SpannableStringBuilder;I)I
.registers 9
const/4 v2, 0x1
new-instance v0, Lcom/instagram/feed/d/x;
invoke-direct {v0, p0, p1}, Lcom/instagram/feed/d/x;-><init>(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)V
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->r()Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
if-ne v1, v2, :cond_2e
sget v1, Lcom/facebook/az;->view_1_comment:I
invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:goto_19
invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I
move-result v1
sub-int/2addr v1, p3
add-int/2addr v1, p3
const/16 v2, 0x21
invoke-virtual {p2, v0, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
const-string v0, "\n"
invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I
move-result v0
return v0
:cond_2e
sget v1, Lcom/facebook/az;->view_all_x_comments:I
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->r()Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
goto :goto_19
.end method
.method private static a(Landroid/content/res/Resources;IF)Landroid/graphics/drawable/Drawable;
.registers 8
const/4 v4, 0x0
invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
const/16 v1, 0x33
invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V
invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
const/16 v2, 0x12
invoke-static {v1, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v1
float-to-int v1, v1
invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v2, p2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;F)F
move-result v2
float-to-int v2, v2
invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I
move-result v3
add-int/2addr v2, v3
invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V
return-object v0
.end method
.method private static a(Ljava/util/List;I)Lcom/instagram/feed/d/b;
.registers 7
:try_start_0
invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
:goto_6
:try_end_6
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7
return-object v0
:catch_7
move-exception v0
const-string v0, "MediaRenderer"
const-string v1, "Attempt to get a comment that does not exist. index = %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
const/4 v0, 0x0
goto :goto_6
.end method
.method static a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
.registers 7
const/4 v4, 0x1
new-instance v1, Landroid/text/SpannableStringBuilder;
const-string v0, " "
invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
new-instance v0, Landroid/text/style/ImageSpan;
sget v2, Lcom/facebook/au;->explore_attribution:I
const/high16 v3, 0x4080
invoke-static {p0, v2, v3}, Lcom/instagram/feed/d/v;->a(Landroid/content/res/Resources;IF)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-direct {v0, v2, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V
const/4 v2, 0x0
const/16 v3, 0x21
invoke-virtual {v1, v0, v2, v4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
new-instance v0, Lcom/instagram/feed/d/b;
invoke-direct {v0}, Lcom/instagram/feed/d/b;-><init>()V
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->u()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/instagram/feed/d/b;->a(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V
invoke-static {}, Lcom/instagram/feed/d/f;->a()Lcom/instagram/feed/d/f;
move-result-object v2
invoke-virtual {v2, v0, v4}, Lcom/instagram/feed/d/f;->a(Lcom/instagram/feed/d/b;Z)Landroid/text/SpannableStringBuilder;
move-result-object v2
invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
:goto_38
if-ltz v0, :cond_4a
invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C
move-result v3
const/16 v4, 0x40
if-ne v3, v4, :cond_47
add-int/lit8 v3, v0, 0x1
invoke-virtual {v2, v0, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;
:cond_47
add-int/lit8 v0, v0, -0x1
goto :goto_38
:cond_4a
invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
return-object v1
.end method
.method static a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/TextPaint;I)Ljava/lang/CharSequence;
.registers 21
invoke-virtual/range {p1 .. p1}, Lcom/instagram/feed/d/l;->z()Lcom/instagram/feed/d/e;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;
move-result-object v14
new-instance v3, Landroid/text/SpannableStringBuilder;
invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V
const/4 v4, 0x0
if-eqz v14, :cond_64
invoke-interface {v14}, Ljava/util/List;->size()I
move-result v2
move v8, v2
:goto_15
const/4 v9, 0x0
invoke-virtual/range {p1 .. p1}, Lcom/instagram/feed/d/l;->m()Z
move-result v2
if-eqz v2, :cond_67
const/4 v2, 0x0
:cond_1d
const/4 v5, 0x6
invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I
move-result v5
move v12, v5
move v13, v2
:goto_24
if-eqz v13, :cond_2c
invoke-virtual/range {p1 .. p1}, Lcom/instagram/feed/d/l;->m()Z
move-result v2
if-eqz v2, :cond_74
:cond_2c
const/4 v2, 0x1
move v11, v2
:goto_2e
if-eqz v11, :cond_77
const/4 v2, 0x1
:goto_31
add-int v15, v12, v2
const/4 v2, 0x0
move v10, v2
:goto_35
if-ge v10, v15, :cond_a1
const/4 v6, 0x0
const/4 v2, 0x0
if-nez v10, :cond_94
const/4 v5, 0x0
invoke-static {v14, v5}, Lcom/instagram/feed/d/v;->a(Ljava/util/List;I)Lcom/instagram/feed/d/b;
move-result-object v5
if-eqz v5, :cond_92
invoke-virtual/range {p1 .. p1}, Lcom/instagram/feed/d/l;->Y()Z
move-result v7
if-eqz v7, :cond_85
invoke-virtual {v5}, Lcom/instagram/feed/d/b;->i()I
move-result v7
sget v16, Lcom/instagram/feed/d/d;->b:I
move/from16 v0, v16
if-ne v7, v0, :cond_79
:goto_52
:cond_52
if-eqz v5, :cond_d0
move-object/from16 v2, p0
move-object/from16 v6, p2
move/from16 v7, p3
invoke-static/range {v2 .. v7}, Lcom/instagram/feed/d/v;->a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;ILcom/instagram/feed/d/b;Landroid/text/TextPaint;I)I
move-result v4
move v2, v9
:goto_5f
add-int/lit8 v5, v10, 0x1
move v10, v5
move v9, v2
goto :goto_35
:cond_64
const/4 v2, 0x0
move v8, v2
goto :goto_15
:cond_67
add-int/lit8 v2, v8, -0x6
const/4 v5, 0x2
if-gt v2, v5, :cond_72
const/4 v2, 0x1
:goto_6d
if-eqz v2, :cond_1d
move v12, v8
move v13, v2
goto :goto_24
:cond_72
const/4 v2, 0x0
goto :goto_6d
:cond_74
const/4 v2, 0x0
move v11, v2
goto :goto_2e
:cond_77
const/4 v2, 0x0
goto :goto_31
:cond_79
const/4 v5, 0x1
if-ne v15, v5, :cond_92
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-static {v0, v1, v3, v4}, Lcom/instagram/feed/d/v;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/SpannableStringBuilder;I)I
move-object v5, v6
goto :goto_52
:cond_85
if-nez v13, :cond_52
invoke-virtual {v5}, Lcom/instagram/feed/d/b;->i()I
move-result v7
sget v16, Lcom/instagram/feed/d/d;->b:I
move/from16 v0, v16
if-eq v7, v0, :cond_52
const/4 v2, 0x1
:cond_92
move-object v5, v6
goto :goto_52
:cond_94
invoke-virtual/range {p1 .. p1}, Lcom/instagram/feed/d/l;->Y()Z
move-result v5
if-eqz v5, :cond_b5
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-static {v0, v1, v3, v4}, Lcom/instagram/feed/d/v;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/SpannableStringBuilder;I)I
:cond_a1
invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I
move-result v2
if-lez v2, :cond_b4
invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I
move-result v4
invoke-virtual {v3, v2, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;
:cond_b4
return-object v3
:cond_b5
const/4 v5, 0x1
if-ne v10, v5, :cond_bf
if-eqz v11, :cond_bf
if-nez v9, :cond_bf
const/4 v2, 0x1
move-object v5, v6
goto :goto_52
:cond_bf
if-eqz v13, :cond_c6
invoke-static {v14, v10}, Lcom/instagram/feed/d/v;->a(Ljava/util/List;I)Lcom/instagram/feed/d/b;
move-result-object v5
goto :goto_52
:cond_c6
sub-int v5, v8, v12
add-int/2addr v5, v10
add-int/lit8 v5, v5, -0x1
invoke-static {v14, v5}, Lcom/instagram/feed/d/v;->a(Ljava/util/List;I)Lcom/instagram/feed/d/b;
move-result-object v5
goto :goto_52
:cond_d0
if-eqz v2, :cond_dc
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-static {v0, v1, v3, v4}, Lcom/instagram/feed/d/v;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/SpannableStringBuilder;I)I
move-result v4
const/4 v2, 0x1
goto :goto_5f
:cond_dc
move v2, v9
goto :goto_5f
.end method
.method static a(Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
.registers 6
new-instance v0, Landroid/text/SpannableStringBuilder;
invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v1, Lcom/instagram/feed/d/a;
const-string v2, "media_owner"
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v3
invoke-direct {v1, v2, v3, p0}, Lcom/instagram/feed/d/a;-><init>(Ljava/lang/String;Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;)V
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
const/16 v4, 0x21
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
return-object v0
.end method
.method static b(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
.registers 10
const/16 v7, 0x21
const/4 v0, 0x1
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->j()Ljava/util/Set;
move-result-object v1
if-eqz v1, :cond_68
invoke-interface {v1}, Ljava/util/Set;->size()I
move-result v2
if-eqz v2, :cond_73
new-instance v2, Landroid/text/SpannableStringBuilder;
const-string v3, " "
invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
new-instance v3, Landroid/text/style/ImageSpan;
sget v4, Lcom/facebook/au;->feed_like_small:I
const/high16 v5, 0x4040
invoke-static {p0, v4, v5}, Lcom/instagram/feed/d/v;->a(Landroid/content/res/Resources;IF)Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-direct {v3, v4, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V
const/4 v4, 0x0
invoke-virtual {v2, v3, v4, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v0
:goto_2c
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_59
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v5, Lcom/instagram/feed/d/a;
const-string v6, "like_owner"
invoke-direct {v5, v6, v0, p1}, Lcom/instagram/feed/d/a;-><init>(Ljava/lang/String;Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;)V
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v0
add-int/2addr v0, v1
invoke-virtual {v2, v5, v1, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
const-string v0, ", "
invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I
move-result v0
move v1, v0
goto :goto_2c
:cond_59
invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I
move-result v0
add-int/lit8 v0, v0, -0x2
invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I
move-result v1
invoke-virtual {v2, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;
move-object v0, v2
:goto_67
return-object v0
:cond_68
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()I
move-result v0
if-lez v0, :cond_73
invoke-static {p0, p1}, Lcom/instagram/feed/d/v;->c(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Landroid/text/SpannableStringBuilder;
move-result-object v0
goto :goto_67
:cond_73
const-string v0, ""
goto :goto_67
.end method
.method private static c(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Landroid/text/SpannableStringBuilder;
.registers 11
const/16 v8, 0x21
const/4 v7, 0x0
const/4 v6, 0x1
new-instance v0, Landroid/text/SpannableStringBuilder;
const-string v1, " "
invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
new-instance v1, Landroid/text/style/ImageSpan;
sget v2, Lcom/facebook/au;->feed_like_small:I
const/high16 v3, 0x4080
invoke-static {p0, v2, v3}, Lcom/instagram/feed/d/v;->a(Landroid/content/res/Resources;IF)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-direct {v1, v2, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V
invoke-virtual {v0, v1, v7, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
sget v1, Lcom/facebook/az;->number_of_people_who_like_this_photo:I
new-array v2, v6, [Ljava/lang/Object;
sget-object v3, Lcom/instagram/feed/d/v;->a:Ljava/text/DecimalFormat;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()I
move-result v4
int-to-long v4, v4
invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v7
invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v1, Lcom/instagram/feed/d/w;
invoke-direct {v1, p1}, Lcom/instagram/feed/d/w;-><init>(Lcom/instagram/feed/d/l;)V
invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
move-result v2
invoke-virtual {v0, v1, v6, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
return-object v0
.end method