.class public final Lcom/google/zxing/client/android/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"
.implements Landroid/view/SurfaceHolder$Callback;
.field private static final i:Ljava/lang/String;
.field private static final j:[Ljava/lang/String;
.field private static final k:Ljava/util/Set;
.field  a:Lcom/google/zxing/client/android/a/e;
.field  b:Lcom/google/zxing/client/android/d;
.field  c:Lcom/google/zxing/client/android/ViewfinderView;
.field  d:Lcom/google/zxing/m;
.field  e:Lcom/google/zxing/client/android/q;
.field  f:Ljava/lang/String;
.field  g:Lcom/google/zxing/client/android/c/c;
.field  h:Lcom/google/zxing/client/android/n;
.field private l:Lcom/google/zxing/m;
.field private m:Landroid/view/View;
.field private n:Z
.field private o:Ljava/lang/String;
.field private p:Z
.field private q:Ljava/util/Collection;
.field private r:Ljava/lang/String;
.field private s:Landroid/content/Intent;
.field private t:Landroid/widget/Button;
.method static constructor <clinit>()V
.registers 4
const-class v0, Lcom/google/zxing/client/android/CaptureActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->i:Ljava/lang/String;
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "http://zxing.appspot.com/scan"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "zxing://scan/"
aput-object v2, v0, v1
sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->j:[Ljava/lang/String;
sget-object v0, Lcom/google/zxing/n;->e:Lcom/google/zxing/n;
sget-object v1, Lcom/google/zxing/n;->f:Lcom/google/zxing/n;
sget-object v2, Lcom/google/zxing/n;->d:Lcom/google/zxing/n;
sget-object v3, Lcom/google/zxing/n;->g:Lcom/google/zxing/n;
invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->k:Ljava/util/Set;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->s:Landroid/content/Intent;
return-void
.end method
.method static synthetic a(Lcom/google/zxing/client/android/CaptureActivity;)Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->s:Landroid/content/Intent;
return-object v0
.end method
.method private a()V
.registers 4
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
sget v1, Lcom/google/zxing/client/android/y;->app_name:I
invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
sget v1, Lcom/google/zxing/client/android/y;->msg_camera_framework_bug:I
invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
sget v1, Lcom/google/zxing/client/android/y;->button_ok:I
new-instance v2, Lcom/google/zxing/client/android/j;
invoke-direct {v2, p0}, Lcom/google/zxing/client/android/j;-><init>(Landroid/app/Activity;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
new-instance v1, Lcom/google/zxing/client/android/j;
invoke-direct {v1, p0}, Lcom/google/zxing/client/android/j;-><init>(Landroid/app/Activity;)V
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
return-void
.end method
.method private a(ILjava/lang/Object;J)V
.registers 8
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
const-wide/16 v1, 0x0
cmp-long v1, p3, v1
if-lez v1, :cond_12
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
invoke-virtual {v1, v0, p3, p4}, Lcom/google/zxing/client/android/d;->sendMessageDelayed(Landroid/os/Message;J)Z
:goto_11
return-void
:cond_12
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/d;->sendMessage(Landroid/os/Message;)Z
goto :goto_11
.end method
.method static a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/o;Lcom/google/zxing/o;)V
.registers 10
iget v1, p2, Lcom/google/zxing/o;->a:F
iget v2, p2, Lcom/google/zxing/o;->b:F
iget v3, p3, Lcom/google/zxing/o;->a:F
iget v4, p3, Lcom/google/zxing/o;->b:F
move-object v0, p0
move-object v5, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
return-void
.end method
.method private a(Landroid/view/SurfaceHolder;)V
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No SurfaceHolder provided"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->a:Lcom/google/zxing/client/android/a/e;
invoke-virtual {v0}, Lcom/google/zxing/client/android/a/e;->a()Z
move-result v0
if-eqz v0, :cond_1a
sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->i:Ljava/lang/String;
const-string v1, "initCamera() while already open -- late SurfaceView callback?"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_19
return-void
:try_start_1a
:cond_1a
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->a:Lcom/google/zxing/client/android/a/e;
invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/a/e;->a(Landroid/view/SurfaceHolder;)V
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
if-nez v0, :cond_30
new-instance v0, Lcom/google/zxing/client/android/d;
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->q:Ljava/util/Collection;
iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->r:Ljava/lang/String;
iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->a:Lcom/google/zxing/client/android/a/e;
invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/zxing/client/android/d;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/a/e;)V
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
:cond_30
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->a(Lcom/google/zxing/m;)V
:try_end_34
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_34} :catch_35
.catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_34} :catch_3f
goto :goto_19
:catch_35
move-exception v0
sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->i:Ljava/lang/String;
invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->a()V
goto :goto_19
:catch_3f
move-exception v0
sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->i:Ljava/lang/String;
const-string v2, "Unexpected error initializing camera"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->a()V
goto :goto_19
.end method
.method private a(Lcom/google/zxing/m;)V
.registers 5
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
if-nez v0, :cond_7
iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivity;->l:Lcom/google/zxing/m;
:goto_6
return-void
:cond_7
if-eqz p1, :cond_b
iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivity;->l:Lcom/google/zxing/m;
:cond_b
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->l:Lcom/google/zxing/m;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
sget v1, Lcom/google/zxing/client/android/w;->decode_succeeded:I
iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->l:Lcom/google/zxing/m;
invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/d;->sendMessage(Landroid/os/Message;)Z
:cond_1e
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->l:Lcom/google/zxing/m;
goto :goto_6
.end method
.method private b()V
.registers 3
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->m:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->d:Lcom/google/zxing/m;
return-void
.end method
.method public final a(J)V
.registers 5
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
sget v1, Lcom/google/zxing/client/android/w;->restart_preview:I
invoke-virtual {v0, v1, p1, p2}, Lcom/google/zxing/client/android/d;->sendEmptyMessageDelayed(IJ)Z
:cond_b
invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->b()V
return-void
.end method
.method final a(Lcom/google/zxing/m;Lcom/google/zxing/client/android/d/j;Landroid/graphics/Bitmap;)V
.registers 13
const/4 v4, 0x3
const/16 v8, 0x8
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;
invoke-virtual {v0, v8}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->m:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
sget v0, Lcom/google/zxing/client/android/w;->barcode_image_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
if-nez p3, :cond_b0
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/google/zxing/client/android/v;->launcher_icon:I
invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_25
sget v0, Lcom/google/zxing/client/android/w;->format_text_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p1, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;
invoke-virtual {v1}, Lcom/google/zxing/a;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
sget v0, Lcom/google/zxing/client/android/w;->type_text_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p2, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;
iget-object v1, v1, Lcom/google/zxing/client/a/q;->o:Lcom/google/zxing/client/a/r;
invoke-virtual {v1}, Lcom/google/zxing/client/a/r;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {v4, v4}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;
move-result-object v0
new-instance v1, Ljava/util/Date;
iget-wide v4, p1, Lcom/google/zxing/m;->f:J
invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
sget v0, Lcom/google/zxing/client/android/w;->time_text_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
sget v0, Lcom/google/zxing/client/android/w;->meta_text_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v1, Lcom/google/zxing/client/android/w;->meta_text_view_label:I
invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p1, Lcom/google/zxing/m;->e:Ljava/util/Map;
if-eqz v1, :cond_cd
new-instance v4, Ljava/lang/StringBuilder;
const/16 v5, 0x14
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_8a
:cond_8a
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_b5
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
sget-object v6, Lcom/google/zxing/client/android/CaptureActivity;->k:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v7
invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_8a
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v6, 0xa
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_8a
:cond_b0
invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto/16 :goto_25
:cond_b5
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v1
if-lez v1, :cond_cd
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
:cond_cd
sget v0, Lcom/google/zxing/client/android/w;->contents_text_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/google/zxing/client/android/d/j;->b()Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v2, 0x16
invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
move-result v1
div-int/lit8 v1, v1, 0x4
rsub-int/lit8 v1, v1, 0x20
invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I
move-result v1
const/4 v2, 0x2
int-to-float v1, v1
invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V
sget v0, Lcom/google/zxing/client/android/w;->contents_supplement_text_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
const-string v2, "preferences_supplemental"
const/4 v4, 0x1
invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_114
iget-object v1, p2, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;
iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->g:Lcom/google/zxing/client/android/c/c;
invoke-static {v0, v1, v2, p0}, Lcom/google/zxing/client/android/d/a/c;->a(Landroid/widget/TextView;Lcom/google/zxing/client/a/q;Lcom/google/zxing/client/android/c/c;Landroid/content/Context;)V
:cond_114
invoke-virtual {p2}, Lcom/google/zxing/client/android/d/j;->a()I
move-result v4
sget v0, Lcom/google/zxing/client/android/w;->result_button_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z
move v2, v3
:goto_124
const/4 v1, 0x4
if-ge v2, v1, :cond_149
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
if-ge v2, v4, :cond_145
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {p2, v2}, Lcom/google/zxing/client/android/d/j;->a(I)I
move-result v5
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V
new-instance v5, Lcom/google/zxing/client/android/d/i;
invoke-direct {v5, p2, v2}, Lcom/google/zxing/client/android/d/i;-><init>(Lcom/google/zxing/client/android/d/j;I)V
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_141
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_124
:cond_145
invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_141
:cond_149
return-void
.end method
.method final b(Lcom/google/zxing/m;Lcom/google/zxing/client/android/d/j;Landroid/graphics/Bitmap;)V
.registers 12
const-wide/16 v0, 0x0
const/4 v3, 0x0
if-eqz p3, :cond_a
iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;
invoke-virtual {v2, p3}, Lcom/google/zxing/client/android/ViewfinderView;->a(Landroid/graphics/Bitmap;)V
:cond_a
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
if-nez v2, :cond_b6
move-wide v1, v0
:goto_11
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Lcom/google/zxing/client/android/q;
sget-object v4, Lcom/google/zxing/client/android/q;->a:Lcom/google/zxing/client/android/q;
if-ne v0, v4, :cond_c9
new-instance v4, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v0, 0x8
invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string v0, "SCAN_RESULT"
invoke-virtual {p1}, Lcom/google/zxing/m;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "SCAN_RESULT_FORMAT"
iget-object v5, p1, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;
invoke-virtual {v5}, Lcom/google/zxing/a;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p1, Lcom/google/zxing/m;->b:[B
if-eqz v0, :cond_49
array-length v5, v0
if-lez v5, :cond_49
const-string v5, "SCAN_RESULT_BYTES"
invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
:cond_49
iget-object v5, p1, Lcom/google/zxing/m;->e:Ljava/util/Map;
if-eqz v5, :cond_c3
sget-object v0, Lcom/google/zxing/n;->h:Lcom/google/zxing/n;
invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_64
const-string v0, "SCAN_RESULT_UPC_EAN_EXTENSION"
sget-object v6, Lcom/google/zxing/n;->h:Lcom/google/zxing/n;
invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_64
sget-object v0, Lcom/google/zxing/n;->b:Lcom/google/zxing/n;
invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-eqz v0, :cond_77
const-string v6, "SCAN_RESULT_ORIENTATION"
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
:cond_77
sget-object v0, Lcom/google/zxing/n;->d:Lcom/google/zxing/n;
invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_86
const-string v6, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"
invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_86
sget-object v0, Lcom/google/zxing/n;->c:Lcom/google/zxing/n;
invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Iterable;
if-eqz v0, :cond_c3
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_94
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c3
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "SCAN_RESULT_BYTE_SEGMENTS_"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_94
:cond_b6
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v4, "RESULT_DISPLAY_DURATION_MS"
invoke-virtual {v2, v4, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v0
move-wide v1, v0
goto/16 :goto_11
:cond_c3
sget v0, Lcom/google/zxing/client/android/w;->return_scan_result:I
invoke-direct {p0, v0, v4, v1, v2}, Lcom/google/zxing/client/android/CaptureActivity;->a(ILjava/lang/Object;J)V
:goto_c8
:cond_c8
return-void
:cond_c9
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Lcom/google/zxing/client/android/q;
sget-object v4, Lcom/google/zxing/client/android/q;->b:Lcom/google/zxing/client/android/q;
if-ne v0, v4, :cond_104
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->o:Ljava/lang/String;
const-string v4, "/scan"
invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, p0, Lcom/google/zxing/client/android/CaptureActivity;->o:Ljava/lang/String;
invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "?q="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p2}, Lcom/google/zxing/client/android/d/j;->b()Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "&source=zxing"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget v3, Lcom/google/zxing/client/android/w;->launch_product_query:I
invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/zxing/client/android/CaptureActivity;->a(ILjava/lang/Object;J)V
goto :goto_c8
:cond_104
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Lcom/google/zxing/client/android/q;
sget-object v3, Lcom/google/zxing/client/android/q;->c:Lcom/google/zxing/client/android/q;
if-ne v0, v3, :cond_c8
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->f:Ljava/lang/String;
if-eqz v0, :cond_c8
iget-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->p:Z
if-eqz v0, :cond_12c
iget-object v0, p1, Lcom/google/zxing/m;->a:Ljava/lang/String;
:goto_114
:try_start_114
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v3
const-string v4, "UTF-8"
invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_11d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_114 .. :try_end_11d} :catch_131
move-result-object v0
:goto_11e
iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->f:Ljava/lang/String;
const-string v4, "{CODE}"
invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
sget v3, Lcom/google/zxing/client/android/w;->launch_product_query:I
invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/zxing/client/android/CaptureActivity;->a(ILjava/lang/Object;J)V
goto :goto_c8
:cond_12c
invoke-virtual {p2}, Lcom/google/zxing/client/android/d/j;->b()Ljava/lang/CharSequence;
move-result-object v0
goto :goto_114
:catch_131
move-exception v3
goto :goto_11e
.end method
.method public final onActivityResult(IILandroid/content/Intent;)V
.registers 6
const/4 v1, -0x1
if-ne p2, v1, :cond_1b
const v0, 0xbacc
if-ne p1, v0, :cond_1b
const-string v0, "ITEM_NUMBER"
invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
if-ltz v0, :cond_1b
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->g:Lcom/google/zxing/client/android/c/c;
invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/c/c;->a(I)Lcom/google/zxing/client/android/c/b;
move-result-object v0
iget-object v0, v0, Lcom/google/zxing/client/android/c/b;->a:Lcom/google/zxing/m;
invoke-direct {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->a(Lcom/google/zxing/m;)V
:cond_1b
return-void
.end method
.method public final onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/google/zxing/client/android/CaptureActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/high16 v6, 0x1
const/4 v5, -0x1
const/4 v4, 0x0
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x80
invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z
sget v0, Lcom/google/zxing/client/android/x;->capture:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "FROM_GROUP"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
:try_start_24
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v2
if-eqz v1, :cond_f4
const-string v0, "com.bbm.ui.activities.ShowGroupBarCodeActivity"
:goto_30
invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
new-instance v2, Landroid/content/Intent;
invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->s:Landroid/content/Intent;
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->s:Landroid/content/Intent;
const-string v2, "from_capture"
const/4 v3, 0x1
invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
if-eqz v1, :cond_56
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->s:Landroid/content/Intent;
const-string v1, "groupUri"
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "groupUri"
invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_56
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->s:Landroid/content/Intent;
const/high16 v1, 0x1
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
:goto_5d
:try_end_5d
.catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_5d} :catch_f8
sget v0, Lcom/google/zxing/client/android/w;->show_my_barcode:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->t:Landroid/widget/Button;
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->t:Landroid/widget/Button;
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v2, "FROM_GROUP"
invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_fe
sget v0, Lcom/google/zxing/client/android/y;->show_group_barcode:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_7b
invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
sget v0, Lcom/google/zxing/client/android/w;->show_my_barcode:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/google/zxing/client/android/a;
invoke-direct {v1, p0}, Lcom/google/zxing/client/android/a;-><init>(Lcom/google/zxing/client/android/CaptureActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iput-boolean v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->n:Z
new-instance v0, Lcom/google/zxing/client/android/c/c;
invoke-direct {v0, p0}, Lcom/google/zxing/client/android/c/c;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->g:Lcom/google/zxing/client/android/c/c;
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->g:Lcom/google/zxing/client/android/c/c;
invoke-virtual {v0}, Lcom/google/zxing/client/android/c/c;->a()V
new-instance v0, Lcom/google/zxing/client/android/n;
invoke-direct {v0, p0}, Lcom/google/zxing/client/android/n;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->h:Lcom/google/zxing/client/android/n;
sget v0, Lcom/google/zxing/client/android/z;->preferences:I
invoke-static {p0, v0, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I
move-result v0
if-ne v0, v6, :cond_106
invoke-virtual {p0, v4, v4}, Lcom/google/zxing/client/android/CaptureActivity;->overridePendingTransition(II)V
:goto_b5
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "JOIN_GROUP"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_10e
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/google/zxing/client/android/y;->scan_to_join:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_cb
new-instance v1, Lcom/google/zxing/client/android/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
sget v3, Lcom/google/zxing/client/android/y;->cancel_narrowbutton:I
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, p0, v0, v2}, Lcom/google/zxing/client/android/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/google/zxing/client/android/b;
invoke-direct {v0, p0}, Lcom/google/zxing/client/android/b;-><init>(Lcom/google/zxing/client/android/CaptureActivity;)V
invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const-string v1, " - Lcom/google/zxing/client/android/CaptureActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_f4
:try_start_f4
const-string v0, "com.bbm.ui.activities.ShowBarCodeActivity"
:try_end_f6
.catch Ljava/lang/ClassNotFoundException; {:try_start_f4 .. :try_end_f6} :catch_f8
goto/16 :goto_30
:catch_f8
move-exception v0
invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
goto/16 :goto_5d
:cond_fe
sget v0, Lcom/google/zxing/client/android/y;->show_my_barcode:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_7b
:cond_106
sget v0, Lcom/google/zxing/client/android/t;->bottom_to_up:I
sget v1, Lcom/google/zxing/client/android/t;->zoom_out:I
invoke-virtual {p0, v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->overridePendingTransition(II)V
goto :goto_b5
:cond_10e
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/google/zxing/client/android/y;->scan_to_invite:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_cb
.end method
.method protected final onDestroy()V
.registers 3
const-string v1, " + Lcom/google/zxing/client/android/CaptureActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->h:Lcom/google/zxing/client/android/n;
invoke-virtual {v0}, Lcom/google/zxing/client/android/n;->d()V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/google/zxing/client/android/CaptureActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 7
const/4 v3, 0x0
const/4 v0, 0x1
sparse-switch p1, :sswitch_data_3a
:cond_5
invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
:goto_9
:sswitch_9
return v0
:sswitch_a
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Lcom/google/zxing/client/android/q;
sget-object v2, Lcom/google/zxing/client/android/q;->a:Lcom/google/zxing/client/android/q;
if-ne v1, v2, :cond_17
invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(I)V
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V
goto :goto_9
:cond_17
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Lcom/google/zxing/client/android/q;
sget-object v2, Lcom/google/zxing/client/android/q;->d:Lcom/google/zxing/client/android/q;
if-eq v1, v2, :cond_23
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Lcom/google/zxing/client/android/q;
sget-object v2, Lcom/google/zxing/client/android/q;->c:Lcom/google/zxing/client/android/q;
if-ne v1, v2, :cond_5
:cond_23
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->d:Lcom/google/zxing/m;
if-eqz v1, :cond_5
const-wide/16 v1, 0x0
invoke-virtual {p0, v1, v2}, Lcom/google/zxing/client/android/CaptureActivity;->a(J)V
goto :goto_9
:sswitch_2d
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->a:Lcom/google/zxing/client/android/a/e;
invoke-virtual {v1, v3}, Lcom/google/zxing/client/android/a/e;->a(Z)V
goto :goto_9
:sswitch_33
iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->a:Lcom/google/zxing/client/android/a/e;
invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/a/e;->a(Z)V
goto :goto_9
nop
:sswitch_data_3a
.sparse-switch
0x4 -> :sswitch_a
0x18 -> :sswitch_33
0x19 -> :sswitch_2d
0x1b -> :sswitch_9
0x50 -> :sswitch_9
.end sparse-switch
.end method
.method protected final onPause()V
.registers 5
const-string v1, " + Lcom/google/zxing/client/android/CaptureActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
sget-object v1, Lcom/google/zxing/client/android/e;->c:Lcom/google/zxing/client/android/e;
iput-object v1, v0, Lcom/google/zxing/client/android/d;->b:Lcom/google/zxing/client/android/e;
iget-object v1, v0, Lcom/google/zxing/client/android/d;->c:Lcom/google/zxing/client/android/a/e;
invoke-virtual {v1}, Lcom/google/zxing/client/android/a/e;->d()V
iget-object v1, v0, Lcom/google/zxing/client/android/d;->a:Lcom/google/zxing/client/android/i;
invoke-virtual {v1}, Lcom/google/zxing/client/android/i;->a()Landroid/os/Handler;
move-result-object v1
sget v2, Lcom/google/zxing/client/android/w;->quit:I
invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v1
invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
:try_start_1e
iget-object v1, v0, Lcom/google/zxing/client/android/d;->a:Lcom/google/zxing/client/android/i;
const-wide/16 v2, 0x1f4
invoke-virtual {v1, v2, v3}, Lcom/google/zxing/client/android/i;->join(J)V
:goto_25
:try_end_25
.catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_25} :catch_53
sget v1, Lcom/google/zxing/client/android/w;->decode_succeeded:I
invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/d;->removeMessages(I)V
sget v1, Lcom/google/zxing/client/android/w;->decode_failed:I
invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/d;->removeMessages(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
:cond_32
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->h:Lcom/google/zxing/client/android/n;
invoke-virtual {v0}, Lcom/google/zxing/client/android/n;->b()V
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->a:Lcom/google/zxing/client/android/a/e;
invoke-virtual {v0}, Lcom/google/zxing/client/android/a/e;->b()V
iget-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->n:Z
if-nez v0, :cond_4f
sget v0, Lcom/google/zxing/client/android/w;->preview_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/SurfaceView;
invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V
:cond_4f
invoke-super {p0}, Landroid/app/Activity;->onPause()V
const-string v1, " - Lcom/google/zxing/client/android/CaptureActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_53
move-exception v1
goto :goto_25
.end method
.method protected final onResume()V
.registers 9
const-string v1, " + Lcom/google/zxing/client/android/CaptureActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v4, 0x0
const/4 v2, 0x0
invoke-super {p0}, Landroid/app/Activity;->onResume()V
new-instance v0, Lcom/google/zxing/client/android/a/e;
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplication()Landroid/app/Application;
move-result-object v3
invoke-direct {v0, v3}, Lcom/google/zxing/client/android/a/e;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->a:Lcom/google/zxing/client/android/a/e;
sget v0, Lcom/google/zxing/client/android/w;->viewfinder_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/google/zxing/client/android/ViewfinderView;
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;
iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->a:Lcom/google/zxing/client/android/a/e;
invoke-virtual {v0, v3}, Lcom/google/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/google/zxing/client/android/a/e;)V
sget v0, Lcom/google/zxing/client/android/w;->result_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->m:Landroid/view/View;
iput-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
iput-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->d:Lcom/google/zxing/m;
invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->b()V
sget v0, Lcom/google/zxing/client/android/w;->preview_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/SurfaceView;
invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
iget-boolean v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->n:Z
if-eqz v3, :cond_9f
invoke-direct {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V
:goto_44
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->h:Lcom/google/zxing/client/android/n;
invoke-virtual {v0}, Lcom/google/zxing/client/android/n;->c()V
invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
sget-object v0, Lcom/google/zxing/client/android/q;->d:Lcom/google/zxing/client/android/q;
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Lcom/google/zxing/client/android/q;
iput-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->q:Ljava/util/Collection;
iput-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->r:Ljava/lang/String;
if-eqz v3, :cond_9e
invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;
move-result-object v4
const-string v5, "com.google.zxing.client.android.SCAN"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a7
sget-object v0, Lcom/google/zxing/client/android/q;->a:Lcom/google/zxing/client/android/q;
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Lcom/google/zxing/client/android/q;
invoke-static {v3}, Lcom/google/zxing/client/android/g;->a(Landroid/content/Intent;)Ljava/util/Collection;
move-result-object v0
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->q:Ljava/util/Collection;
const-string v0, "SCAN_WIDTH"
invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_96
const-string v0, "SCAN_HEIGHT"
invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_96
const-string v0, "SCAN_WIDTH"
invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
const-string v1, "SCAN_HEIGHT"
invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
if-lez v0, :cond_96
if-lez v1, :cond_96
iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->a:Lcom/google/zxing/client/android/a/e;
invoke-virtual {v2, v0, v1}, Lcom/google/zxing/client/android/a/e;->a(II)V
:cond_96
:goto_96
const-string v0, "CHARACTER_SET"
invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->r:Ljava/lang/String;
:cond_9e
const-string v1, " - Lcom/google/zxing/client/android/CaptureActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9f
invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
const/4 v3, 0x3
invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setType(I)V
goto :goto_44
:cond_a7
if-eqz v4, :cond_c4
const-string v0, "http://www.google"
invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_c4
const-string v0, "/m/products/scan"
invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_c4
sget-object v0, Lcom/google/zxing/client/android/q;->b:Lcom/google/zxing/client/android/q;
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Lcom/google/zxing/client/android/q;
iput-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->o:Ljava/lang/String;
sget-object v0, Lcom/google/zxing/client/android/g;->a:Ljava/util/Collection;
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->q:Ljava/util/Collection;
goto :goto_96
:cond_c4
if-eqz v4, :cond_100
sget-object v5, Lcom/google/zxing/client/android/CaptureActivity;->j:[Ljava/lang/String;
array-length v6, v5
move v0, v2
:goto_ca
if-ge v0, v6, :cond_100
aget-object v7, v5, v0
invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_fd
move v0, v1
:goto_d5
if-eqz v0, :cond_96
sget-object v0, Lcom/google/zxing/client/android/q;->c:Lcom/google/zxing/client/android/q;
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->e:Lcom/google/zxing/client/android/q;
iput-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->o:Ljava/lang/String;
iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->o:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
const-string v0, "ret"
invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->f:Ljava/lang/String;
const-string v0, "raw"
invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_102
move v0, v1
:goto_f4
iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->p:Z
invoke-static {v4}, Lcom/google/zxing/client/android/g;->a(Landroid/net/Uri;)Ljava/util/Collection;
move-result-object v0
iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->q:Ljava/util/Collection;
goto :goto_96
:cond_fd
add-int/lit8 v0, v0, 0x1
goto :goto_ca
:cond_100
move v0, v2
goto :goto_d5
:cond_102
move v0, v2
goto :goto_f4
.end method
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
.registers 5
return-void
.end method
.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
.registers 4
if-nez p1, :cond_9
sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->i:Ljava/lang/String;
const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_9
iget-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->n:Z
if-nez v0, :cond_13
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->n:Z
invoke-direct {p0, p1}, Lcom/google/zxing/client/android/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V
:cond_13
return-void
.end method
.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->n:Z
return-void
.end method