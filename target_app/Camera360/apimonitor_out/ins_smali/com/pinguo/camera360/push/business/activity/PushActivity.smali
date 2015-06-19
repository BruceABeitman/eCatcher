.class public Lcom/pinguo/camera360/push/business/activity/PushActivity;
.super Landroid/app/Activity;
.source "PushActivity.java"
.implements Landroid/view/View$OnClickListener;
.field private static final TAG:Ljava/lang/String; = "newpush"
.field private button:Landroid/widget/Button;
.field private ivImage:Landroid/widget/ImageView;
.field private ivReturn:Landroid/widget/ImageView;
.field private tvDetail:Landroid/widget/TextView;
.field private tvTitle:Landroid/widget/TextView;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->ivReturn:Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->tvTitle:Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->ivImage:Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->tvDetail:Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->button:Landroid/widget/Button;
return-void
.end method
.method private setDisplayContent()V
.registers 15
iget-object v11, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->tvTitle:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->getIntent()Landroid/content/Intent;
move-result-object v12
const-string/jumbo v13, "title"
invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->getIntent()Landroid/content/Intent;
move-result-object v11
const-string/jumbo v12, "msg"
invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->getIntent()Landroid/content/Intent;
move-result-object v11
const-string/jumbo v12, "link"
invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v11, "<br/>"
invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v11, "<a href=\""
invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v11, "\">"
invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v11, "</a>"
invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v11, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->tvDetail:Landroid/widget/TextView;
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v12
invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->getIntent()Landroid/content/Intent;
move-result-object v11
const-string/jumbo v12, "image"
invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const/4 v1, 0x0
invoke-static {v8}, Lcom/pinguo/camera360/push/utils/PushUtils;->isNull(Ljava/lang/String;)Z
move-result v11
if-nez v11, :cond_6c
:try_start_68
invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
:try_end_6b
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_76
move-result-object v1
:goto_6c
:cond_6c
if-nez v1, :cond_7f
iget-object v11, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->ivImage:Landroid/widget/ImageView;
const/16 v12, 0x8
invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_75
return-void
:catch_76
move-exception v4
const-string/jumbo v11, "newpush"
invoke-static {v11, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v1, 0x0
goto :goto_6c
:cond_7f
new-instance v3, Landroid/util/DisplayMetrics;
invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v11
invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v11
invoke-virtual {v11, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget-object v11, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->ivImage:Landroid/widget/ImageView;
invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v7
check-cast v7, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
iget v11, v3, Landroid/util/DisplayMetrics;->widthPixels:I
const/high16 v12, 0x4120
iget v13, v3, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v12, v13
invoke-static {v12}, Ljava/lang/Math;->round(F)I
move-result v12
sub-int v10, v11, v12
iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I
mul-int v11, v0, v10
div-int/2addr v11, v2
iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I
iget-object v11, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->ivImage:Landroid/widget/ImageView;
invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v11, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->ivImage:Landroid/widget/ImageView;
invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_75
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/push/business/activity/PushActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_22
:pswitch_7
invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->finish()V
:goto_a
const-string v1, " - Lcom/pinguo/camera360/push/business/activity/PushActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_b
invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->finish()V
goto :goto_a
:pswitch_f
new-instance v0, Lcom/pinguo/camera360/push/business/activity/PushActivity$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/push/business/activity/PushActivity$1;-><init>(Lcom/pinguo/camera360/push/business/activity/PushActivity;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/push/business/activity/PushActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->startCameraActivity(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->finish()V
goto :goto_a
nop
:pswitch_data_22
.packed-switch 0x7f0a055b
:pswitch_b
:pswitch_7
:pswitch_f
.end packed-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 14
const-string v1, " + Lcom/pinguo/camera360/push/business/activity/PushActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v8, 0x0
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const-string/jumbo v7, "newpush"
const-string/jumbo v9, "onCreate"
invoke-static {v7, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushOpenActivity(I)V
const v7, 0x7f0300ef
invoke-virtual {p0, v7}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->setContentView(I)V
const v7, 0x7f0a055b
invoke-virtual {p0, v7}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/ImageView;
iput-object v7, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->ivReturn:Landroid/widget/ImageView;
const v7, 0x7f0a055e
invoke-virtual {p0, v7}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/ImageView;
iput-object v7, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->ivImage:Landroid/widget/ImageView;
const v7, 0x7f0a055c
invoke-virtual {p0, v7}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/TextView;
iput-object v7, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->tvTitle:Landroid/widget/TextView;
const v7, 0x7f0a055f
invoke-virtual {p0, v7}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/TextView;
iput-object v7, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->tvDetail:Landroid/widget/TextView;
const v7, 0x7f0a055d
invoke-virtual {p0, v7}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/Button;
iput-object v7, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->button:Landroid/widget/Button;
invoke-direct {p0}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->setDisplayContent()V
iget-object v7, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->ivReturn:Landroid/widget/ImageView;
invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v7, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->button:Landroid/widget/Button;
invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v7, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->tvDetail:Landroid/widget/TextView;
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v9
invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
iget-object v7, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->tvDetail:Landroid/widget/TextView;
invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v4
instance-of v7, v4, Landroid/text/Spannable;
if-eqz v7, :cond_92
invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
move-result v0
iget-object v7, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->tvDetail:Landroid/widget/TextView;
invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v2
check-cast v2, Landroid/text/Spannable;
const-class v7, Landroid/text/style/URLSpan;
invoke-interface {v2, v8, v0, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v6
check-cast v6, [Landroid/text/style/URLSpan;
new-instance v3, Landroid/text/SpannableStringBuilder;
invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clearSpans()V
array-length v9, v6
move v7, v8
:goto_8b
if-lt v7, v9, :cond_93
iget-object v7, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity;->tvDetail:Landroid/widget/TextView;
invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_92
const-string v1, " - Lcom/pinguo/camera360/push/business/activity/PushActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_93
aget-object v5, v6, v7
new-instance v1, Lcom/pinguo/camera360/push/utils/PushURLSpan;
invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v8
invoke-direct {v1, p0, v8}, Lcom/pinguo/camera360/push/utils/PushURLSpan;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I
move-result v8
invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I
move-result v10
const/16 v11, 0x22
invoke-virtual {v3, v1, v8, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
add-int/lit8 v7, v7, 0x1
goto :goto_8b
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/push/business/activity/PushActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/push/business/activity/PushActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/push/business/activity/PushActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/push/business/activity/PushActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method