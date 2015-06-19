.class public Lcom/twidroid/activity/SendTweet;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"
.field static final A:I = 0x18f
.field static final B:I = 0x18c
.field static final C:I = 0x190
.field static final D:I = 0x191
.field static final E:I = 0x192
.field static final F:I = 0x2b3
.field static final G:I = 0x2b4
.field public static final I:I = 0x7
.field private static final aD:I = 0x18e
.field private static final aE:I = 0x52455452
.field private static final aF:I = 0x474f544f
.field static final ad:I = 0x177
.field private static final as:Ljava/lang/String; = "accountId"
.field private static final at:Ljava/lang/String; = "facebookEnabled"
.field private static final au:Ljava/lang/String; = "postLocation"
.field private static final av:Ljava/lang/String; = "textMessage"
.field public static final b:Ljava/lang/String; = "EXTRA_REPLY_STATUS_ID"
.field private static final bb:I = 0x6
.field private static final bc:I = 0x7
.field public static final c:Ljava/lang/String; = "EXTRA_ACCOUNT_ID"
.field public static final d:Ljava/lang/String; = "EXTRA_PLACE_ID"
.field public static final e:Ljava/lang/String; = "android.intent.extra.TEXT"
.field public static final f:Ljava/lang/String; = "EXTRA_ORIGINAL_TEXT"
.field public static final g:I = 0x2fd
.field public static final h:I = 0x45d9
.field public static final i:I = 0x8
.field public static final j:I = 0x17b
.field static final l:Ljava/lang/String; = "com.twidroid.SendTweet"
.field public static final q:Ljava/lang/String; = "twidroyd_display_message"
.field public static final r:Ljava/lang/String; = "twidroyd_disable_attach_buttons"
.field static final s:I = 0x1
.field static final t:I = 0x2
.field static final u:I = 0x3
.field static final v:I = 0x5
.field static final w:I = 0x174
.field static final x:I = 0x186
.field static final y:I = 0x187
.field static final z:I = 0x188
.field  H:Lcom/twidroid/net/c/a/a;
.field  J:Lcom/twidroid/ui/widgets/MyEditText;
.field  K:Landroid/widget/ProgressBar;
.field  L:Landroid/widget/TextView;
.field  M:Landroid/app/ProgressDialog;
.field  N:Lcom/twidroid/d/v;
.field  O:Landroid/view/MenuItem;
.field  P:Landroid/app/AlertDialog;
.field  Q:Z
.field  R:Z
.field  S:D
.field  T:D
.field  U:Z
.field  V:Ljava/lang/String;
.field  W:Ljava/lang/String;
.field  X:Lcom/twidroid/net/a/b/b;
.field  Y:I
.field  Z:Landroid/content/Intent;
.field private aA:Z
.field private aB:Z
.field private aC:Ljava/lang/String;
.field private final aG:J
.field private aH:Z
.field private aI:Z
.field private aJ:Ljava/io/File;
.field private aK:Landroid/widget/TextView;
.field private aL:Ljava/util/ArrayList;
.field private aM:Ljava/util/ArrayList;
.field private aN:Lcom/twidroid/activity/t;
.field private aO:Landroid/widget/ProgressBar;
.field private aP:Landroid/widget/ImageButton;
.field private aQ:Z
.field private aR:Lcom/twidroid/c/f;
.field private aS:Landroid/widget/LinearLayout;
.field private aT:Landroid/widget/TextView;
.field private aU:Landroid/widget/LinearLayout;
.field private aV:Landroid/graphics/drawable/Drawable;
.field private aW:Landroid/graphics/drawable/Drawable;
.field private final aX:I
.field private final aY:I
.field private final aZ:I
.field  aa:I
.field  ab:Z
.field  ac:J
.field  ae:Landroid/widget/CheckBox;
.field  af:Lcom/twidroid/net/a/a/c;
.field  ag:Landroid/widget/TextView;
.field  ah:J
.field  ai:Z
.field final aj:Lcom/twidroid/net/a/b/c;
.field final ak:Landroid/text/style/ForegroundColorSpan;
.field final al:Landroid/text/style/StyleSpan;
.field  am:Ljava/lang/String;
.field  an:Ljava/util/List;
.field  ao:Ljava/util/List;
.field  ap:Ljava/lang/String;
.field  aq:Z
.field  ar:Landroid/location/Location;
.field private aw:Lcom/twidroid/net/c/a;
.field private ax:Landroid/net/Uri;
.field private ay:Lcom/twidroid/UberSocialApplication;
.field private az:J
.field private final ba:I
.field private final bd:I
.field public k:Landroid/os/Handler;
.field public m:Ljava/lang/String;
.field public n:Ljava/lang/String;
.field protected o:Lcom/twidroid/ui/widgets/AccountSpinner;
.field protected p:Lcom/twidroid/ui/themes/r;
.method public constructor <init>()V
.registers 8
const-wide/16 v5, 0x0
const/4 v4, 0x0
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V
iput-object v4, p0, Lcom/twidroid/activity/SendTweet;->n:Ljava/lang/String;
iput-boolean v2, p0, Lcom/twidroid/activity/SendTweet;->aA:Z
const-wide/16 v0, 0x9c4
iput-wide v0, p0, Lcom/twidroid/activity/SendTweet;->aG:J
iput-boolean v2, p0, Lcom/twidroid/activity/SendTweet;->Q:Z
iput-boolean v2, p0, Lcom/twidroid/activity/SendTweet;->R:Z
iput-boolean v2, p0, Lcom/twidroid/activity/SendTweet;->U:Z
iput-boolean v2, p0, Lcom/twidroid/activity/SendTweet;->aH:Z
const-string v0, "Twitter connection failed"
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;
const/16 v0, 0x64
iput v0, p0, Lcom/twidroid/activity/SendTweet;->Y:I
iput v2, p0, Lcom/twidroid/activity/SendTweet;->aa:I
iput-boolean v2, p0, Lcom/twidroid/activity/SendTweet;->ab:Z
iput-boolean v3, p0, Lcom/twidroid/activity/SendTweet;->aI:Z
iput-wide v5, p0, Lcom/twidroid/activity/SendTweet;->ac:J
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aM:Ljava/util/ArrayList;
iput-wide v5, p0, Lcom/twidroid/activity/SendTweet;->ah:J
iput-boolean v2, p0, Lcom/twidroid/activity/SendTweet;->aQ:Z
iput-boolean v2, p0, Lcom/twidroid/activity/SendTweet;->ai:Z
new-instance v0, Lcom/twidroid/activity/SendTweet$1;
invoke-direct {v0, p0}, Lcom/twidroid/activity/SendTweet$1;-><init>(Lcom/twidroid/activity/SendTweet;)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;
new-instance v0, Landroid/text/style/ForegroundColorSpan;
const/high16 v1, -0x1
invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->ak:Landroid/text/style/ForegroundColorSpan;
new-instance v0, Landroid/text/style/StyleSpan;
invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->al:Landroid/text/style/StyleSpan;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->an:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->ao:Ljava/util/List;
iput-boolean v2, p0, Lcom/twidroid/activity/SendTweet;->aq:Z
iput-object v4, p0, Lcom/twidroid/activity/SendTweet;->ar:Landroid/location/Location;
const/4 v0, 0x2
iput v0, p0, Lcom/twidroid/activity/SendTweet;->aX:I
const/4 v0, 0x3
iput v0, p0, Lcom/twidroid/activity/SendTweet;->aY:I
const/4 v0, 0x4
iput v0, p0, Lcom/twidroid/activity/SendTweet;->aZ:I
const/4 v0, 0x5
iput v0, p0, Lcom/twidroid/activity/SendTweet;->ba:I
const/16 v0, 0xa
iput v0, p0, Lcom/twidroid/activity/SendTweet;->bd:I
return-void
.end method
.method private A()V
.registers 3
const v0, 0x7f09015f
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aP:Landroid/widget/ImageButton;
iget-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->Q:Z
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aP:Landroid/widget/ImageButton;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aV:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->E()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aK:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:goto_1f
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aK:Landroid/widget/TextView;
new-instance v1, Lcom/twidroid/activity/SendTweet$53;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$53;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aP:Landroid/widget/ImageButton;
new-instance v1, Lcom/twidroid/activity/SendTweet$55;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$55;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
:cond_34
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aP:Landroid/widget/ImageButton;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aW:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aK:Landroid/widget/TextView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_1f
.end method
.method private B()V
.registers 4
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f0c010a
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
const v1, 0x7f0c0117
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
const v1, 0x7f0c0308
new-instance v2, Lcom/twidroid/activity/SendTweet$56;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$56;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
const/high16 v1, 0x104
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method private C()V
.registers 3
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/activity/SendTweet$57;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$57;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method private D()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
if-eqz v0, :cond_1b
new-instance v0, Lcom/twidroid/activity/u;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/twidroid/activity/u;-><init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/SendTweet$1;)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
iget-object v2, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
new-array v2, v2, [Lcom/twidroid/activity/r;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/activity/u;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_1b
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aJ:Ljava/io/File;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aJ:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aJ:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_2c
return-void
.end method
.method private E()V
.registers 3
new-instance v0, Lcom/twidroid/activity/SendTweet$59;
invoke-direct {v0, p0}, Lcom/twidroid/activity/SendTweet$59;-><init>(Lcom/twidroid/activity/SendTweet;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet$59;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method private F()V
.registers 9
const/4 v7, 0x0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
if-nez v0, :cond_1e
const-string v0, "Can\'t shrink empty tweet!"
invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
const-string v0, "com.twidroid.SendTweet"
const-string v1, "Someone tried to shrink empty tweet..."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_1d
return-void
:cond_1e
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v2
const-wide/16 v3, -0x1
const/4 v5, 0x0
const-string v6, "TweetShrinkAPI"
move-object v0, p0
invoke-static/range {v0 .. v6}, Lcom/twidroid/net/c/n;->a(Landroid/app/Activity;Landroid/widget/EditText;Lcom/twidroid/model/twitter/c;JLjava/lang/String;Ljava/lang/String;)Lcom/twidroid/net/c/n;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$61;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$61;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Lcom/twidroid/net/c/n;->a(Lcom/twidroid/net/c/o;)V
new-instance v1, Lcom/twidroid/net/c/p;
invoke-direct {v1}, Lcom/twidroid/net/c/p;-><init>()V
const/4 v2, 0x1
new-array v2, v2, [Lcom/twidroid/net/c/n;
aput-object v0, v2, v7
invoke-virtual {v1, v2}, Lcom/twidroid/net/c/p;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_1d
.end method
.method private G()Lcom/twidroid/model/twitter/c;
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_18
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;
move-result-object v0
:goto_17
return-object v0
:cond_18
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;
move-result-object v0
goto :goto_17
.end method
.method public static a(Landroid/app/Activity;)I
.registers 3
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v1
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I
sparse-switch v0, :sswitch_data_1e
const/16 v0, 0x280
:goto_17
return v0
:sswitch_18
const/16 v0, 0x140
goto :goto_17
:sswitch_1b
const/16 v0, 0x1e0
goto :goto_17
:sswitch_data_1e
.sparse-switch
0x78 -> :sswitch_18
0xa0 -> :sswitch_1b
.end sparse-switch
.end method
.method static synthetic a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/t;)Lcom/twidroid/activity/t;
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
return-object p1
.end method
.method static synthetic a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/r;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/net/Uri;)V
.registers 6
const/4 v3, 0x0
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const-string v1, "_data"
aput-object v1, v0, v3
const/4 v1, 0x1
const-string v2, "mime_type"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "orientation"
aput-object v2, v0, v1
invoke-direct {p0, p1, v0, v3}, Lcom/twidroid/activity/SendTweet;->a(Landroid/net/Uri;[Ljava/lang/String;Z)V
return-void
.end method
.method private a(Landroid/net/Uri;ILjava/lang/String;IZ)V
.registers 13
const/4 v5, 0x1
const/4 v0, -0x1
if-ne p2, v0, :cond_b
if-nez p5, :cond_a
const/4 v0, 0x0
invoke-direct {p0, p1, p3, v0, p2}, Lcom/twidroid/activity/SendTweet;->a(Landroid/net/Uri;Ljava/lang/String;II)V
:cond_a
:goto_a
return-void
:cond_b
if-nez p5, :cond_11
invoke-direct {p0, p1, p3, p4, p2}, Lcom/twidroid/activity/SendTweet;->a(Landroid/net/Uri;Ljava/lang/String;II)V
goto :goto_a
:cond_11
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
int-to-long v1, p2
const/4 v3, 0x3
const/4 v4, 0x0
invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v3
if-eqz v3, :cond_24
if-eqz p4, :cond_24
invoke-static {v3, p4}, Lcom/twidroid/d/r;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v3
:cond_24
new-instance v0, Lcom/twidroid/activity/r;
move-object v1, p1
move-object v2, p3
move-object v4, p3
move v6, v5
invoke-direct/range {v0 .. v6}, Lcom/twidroid/activity/r;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/r;)V
goto :goto_a
.end method
.method private a(Landroid/net/Uri;Ljava/lang/String;II)V
.registers 9
new-instance v0, Lcom/twidroid/activity/q;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/twidroid/activity/q;-><init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/SendTweet$1;)V
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
aput-object p2, v1, v2
const/4 v2, 0x1
invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x3
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/activity/q;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method private a(Landroid/net/Uri;[Ljava/lang/String;Z)V
.registers 5
new-instance v0, Lcom/twidroid/activity/SendTweet$46;
invoke-direct {v0, p0}, Lcom/twidroid/activity/SendTweet$46;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-static {p1, p2, p3, p0, v0}, Lcom/ubermedia/b/i;->a(Landroid/net/Uri;[Ljava/lang/String;ZLandroid/content/Context;Lcom/ubermedia/b/k;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/SendTweet;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->q()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/SendTweet;Landroid/net/Uri;ILjava/lang/String;IZ)V
.registers 6
invoke-direct/range {p0 .. p5}, Lcom/twidroid/activity/SendTweet;->a(Landroid/net/Uri;ILjava/lang/String;IZ)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/SendTweet;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/SendTweet;->c(Landroid/view/View;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/r;Z)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/c/f;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/c/f;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/SendTweet;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/SendTweet;->h(Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/SendTweet;Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/twidroid/activity/SendTweet;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private a(Lcom/twidroid/activity/r;)V
.registers 7
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0a0012
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
if-eqz p1, :cond_58
new-instance v2, Landroid/widget/ImageView;
invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
float-to-int v4, v1
float-to-int v1, v1
invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p1}, Lcom/twidroid/activity/r;->d()Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_59
invoke-virtual {p1}, Lcom/twidroid/activity/r;->d()Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_2f
const/4 v1, 0x1
invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V
new-instance v1, Lcom/twidroid/activity/SendTweet$49;
invoke-direct {v1, p0, p1}, Lcom/twidroid/activity/SendTweet$49;-><init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;)V
invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aS:Landroid/widget/LinearLayout;
invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {p1}, Lcom/twidroid/activity/r;->k()Z
move-result v1
if-eqz v1, :cond_68
const v1, 0x7f0c0131
invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_58
:goto_58
return-void
:cond_59
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x1080037
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_2f
:cond_68
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->aE()Z
move-result v1
if-eqz v1, :cond_79
new-instance v0, Lcom/twidroid/activity/SendTweet$50;
invoke-direct {v0, p0, v2, p1}, Lcom/twidroid/activity/SendTweet$50;-><init>(Lcom/twidroid/activity/SendTweet;Landroid/widget/ImageView;Lcom/twidroid/activity/r;)V
invoke-direct {p0, p1, v0}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
goto :goto_58
:cond_79
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/twidroid/activity/r;->c()I
move-result v3
if-nez v3, :cond_91
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/twidroid/d/v;->g(Landroid/content/Context;)I
move-result v0
:cond_91
invoke-static {v1, v2, v0}, Lcom/twidroid/net/a/b/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;I)Lcom/twidroid/net/a/b/b;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;
goto :goto_58
.end method
.method private a(Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
.registers 5
if-eqz p1, :cond_16
invoke-virtual {p1}, Lcom/twidroid/activity/r;->f()Z
move-result v0
if-eqz v0, :cond_16
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/activity/SendTweet$47;
invoke-direct {v1, p0, p1, p2}, Lcom/twidroid/activity/SendTweet$47;-><init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:goto_15
:cond_15
return-void
:cond_16
if-eqz p2, :cond_15
const/4 v0, 0x0
invoke-interface {p2, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
goto :goto_15
.end method
.method private a(Lcom/twidroid/activity/r;Z)V
.registers 4
if-eqz p2, :cond_5
invoke-static {p1}, Lcom/twidroid/d/m;->a(Lcom/twidroid/activity/r;)V
:cond_5
invoke-virtual {p1}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->g(Ljava/lang/String;)Z
return-void
.end method
.method private a(Lcom/twidroid/c/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet;->aR:Lcom/twidroid/c/f;
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;)V
.registers 9
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->af:Lcom/twidroid/net/a/a/c;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->af:Lcom/twidroid/net/a/a/c;
invoke-virtual {v0}, Lcom/twidroid/net/a/a/c;->a()Lcom/facebook/a/e;
move-result-object v1
new-instance v0, Lcom/facebook/a/a;
invoke-direct {v0, v1}, Lcom/facebook/a/a;-><init>(Lcom/facebook/a/e;)V
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-string v1, "message"
invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/ubermedia/ui/b;->p:Ljava/util/regex/Pattern;
invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
move-result v3
if-eqz v3, :cond_2f
const-string v3, "link"
invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2f
if-eqz p2, :cond_40
const/16 v1, 0xc8
invoke-static {p2, v1}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;
move-result-object v1
const-string v3, "picture"
invoke-virtual {v1}, Lcom/twidroid/d/n;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_40
const-string v1, "me/feed"
const-string v3, "POST"
new-instance v4, Lcom/twidroid/activity/SendTweet$63;
invoke-direct {v4, p0}, Lcom/twidroid/activity/SendTweet$63;-><init>(Lcom/twidroid/activity/SendTweet;)V
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V
goto :goto_4
.end method
.method static synthetic a(Lcom/twidroid/activity/SendTweet;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/activity/SendTweet;->aH:Z
return p1
.end method
.method static synthetic b(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/activity/t;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
return-object v0
.end method
.method private b(Lcom/twidroid/activity/r;)Ljava/lang/String;
.registers 8
const/4 v5, 0x2
const/4 v4, 0x0
const/4 v3, 0x1
invoke-virtual {p1}, Lcom/twidroid/activity/r;->c()I
move-result v0
if-nez v0, :cond_49
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "file://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/activity/r;->j()Ljava/lang/String;
move-result-object v0
const-string v2, "http"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_44
invoke-static {p1}, Lcom/twidroid/activity/r;->b(Lcom/twidroid/activity/r;)Ljava/lang/String;
move-result-object v0
:goto_24
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->V:Ljava/lang/String;
const-string v0, "usedPhotoFilter"
new-array v1, v5, [Ljava/lang/Object;
const-string v2, "filterType"
aput-object v2, v1, v4
const-string v2, "original"
aput-object v2, v1, v3
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:goto_41
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->V:Ljava/lang/String;
return-object v0
:cond_44
invoke-virtual {p1}, Lcom/twidroid/activity/r;->j()Ljava/lang/String;
move-result-object v0
goto :goto_24
:cond_49
invoke-virtual {p1}, Lcom/twidroid/activity/r;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/twidroid/activity/r;->c()I
move-result v1
iget-object v2, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/twidroid/d/v;->g(Landroid/content/Context;)I
move-result v2
invoke-static {p0, v0, v1, v2, v3}, Lcom/twidroid/d/j;->a(Landroid/app/Activity;Ljava/lang/String;IIZ)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->V:Ljava/lang/String;
const-string v0, "usedPhotoFilter"
new-array v1, v5, [Ljava/lang/Object;
const-string v2, "filterType"
aput-object v2, v1, v4
invoke-virtual {p1}, Lcom/twidroid/activity/r;->c()I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v3
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
goto :goto_41
.end method
.method private b(Landroid/net/Uri;)V
.registers 6
const/4 v3, 0x1
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_data"
aput-object v2, v0, v1
const-string v1, "mime_type"
aput-object v1, v0, v3
const/4 v1, 0x2
const-string v2, "_id"
aput-object v2, v0, v1
invoke-direct {p0, p1, v0, v3}, Lcom/twidroid/activity/SendTweet;->a(Landroid/net/Uri;[Ljava/lang/String;Z)V
return-void
.end method
.method private b(Landroid/view/View;)V
.registers 5
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x1040014
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
const v1, 0x7f0c02c5
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
const v1, 0x104000a
new-instance v2, Lcom/twidroid/activity/SendTweet$48;
invoke-direct {v2, p0, p1}, Lcom/twidroid/activity/SendTweet$48;-><init>(Lcom/twidroid/activity/SendTweet;Landroid/view/View;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
const/high16 v1, 0x104
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/SendTweet;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/SendTweet;->b(Landroid/view/View;)V
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/r;)V
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/SendTweet;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/SendTweet;->f(Ljava/lang/String;)V
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/SendTweet;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/SendTweet;->g(Z)V
return-void
.end method
.method private b(Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
.registers 7
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-ge v0, v1, :cond_e
:goto_d
:cond_d
return-void
:cond_e
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->n()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/SendTweet$51;
invoke-direct {v1, p0, p1, p2}, Lcom/twidroid/activity/SendTweet$51;-><init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
const-wide/16 v2, 0x64
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_d
.end method
.method static synthetic c(Lcom/twidroid/activity/SendTweet;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aO:Landroid/widget/ProgressBar;
return-object v0
.end method
.method private c(Landroid/content/Intent;)V
.registers 6
const/4 v2, 0x0
const v0, 0x7f090166
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/MyEditText;
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/MyEditText;->setAppendCharLeftText(Z)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ag:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setCharCounterText(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->H()Z
move-result v0
if-eqz v0, :cond_87
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/MyEditText;->setImeOptions(I)V
:goto_25
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v1, Lcom/twidroid/activity/SendTweet$69;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$69;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
const v1, 0x7f0c02f0
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->a()Landroid/support/v7/app/ActionBar;
move-result-object v2
const/4 v3, 0x1
invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
const/16 v1, 0x30
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setGravity(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->L()Z
move-result v0
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v1, Lcom/twidroid/activity/SendTweet$2;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$2;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setATKeyListener(Lcom/twidroid/ui/widgets/h;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v1, Lcom/twidroid/activity/SendTweet$3;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$3;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setHashKeyListener(Lcom/twidroid/ui/widgets/j;)V
:try_start_63
:cond_63
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
const-string v1, "com.twidroid.extra.MESSAGE"
invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->a()V
:try_end_73
.catch Ljava/lang/Exception; {:try_start_63 .. :try_end_73} :catch_95
:goto_73
const v0, 0x7f090163
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->k()V
return-void
:cond_87
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getImeOptions()I
move-result v1
or-int/lit8 v1, v1, 0x4
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setImeOptions(I)V
goto :goto_25
:catch_95
move-exception v0
goto :goto_73
.end method
.method private c(Landroid/view/View;)V
.registers 5
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_66
instance-of v1, v0, Lcom/twidroid/activity/r;
if-eqz v1, :cond_66
check-cast v0, Lcom/twidroid/activity/r;
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->q()V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->r()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
iput v2, v1, Lcom/twidroid/ui/widgets/MyEditText;->a:I
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->a()V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aS:Landroid/widget/LinearLayout;
invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
:try_start_2e
invoke-virtual {v0}, Lcom/twidroid/activity/r;->k()Z
move-result v1
if-nez v1, :cond_38
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/r;Z)V
:cond_38
:goto_38
:try_end_38
.catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_67
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->an:Ljava/util/List;
invoke-static {v0}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4d
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->an:Ljava/util/List;
invoke-static {v0}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:cond_4d
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aM:Ljava/util/ArrayList;
if-eqz v1, :cond_66
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aM:Ljava/util/ArrayList;
invoke-virtual {v0}, Lcom/twidroid/activity/r;->j()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_66
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aM:Ljava/util/ArrayList;
invoke-virtual {v0}, Lcom/twidroid/activity/r;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_66
return-void
:catch_67
move-exception v1
goto :goto_38
.end method
.method static synthetic c(Lcom/twidroid/activity/SendTweet;Ljava/lang/String;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/activity/SendTweet;->g(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic c(Lcom/twidroid/activity/SendTweet;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/activity/SendTweet;->aB:Z
return p1
.end method
.method static synthetic d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v0
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/activity/SendTweet;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/activity/SendTweet;->aI:Z
return p1
.end method
.method static synthetic e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/activity/SendTweet;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/SendTweet;->f(Z)V
return-void
.end method
.method private e(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method static synthetic f(Lcom/twidroid/activity/SendTweet;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
return-object v0
.end method
.method private f(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aM:Ljava/util/ArrayList;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aM:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aM:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_11
:cond_11
return-void
:cond_12
const-string v0, "This file already being attached"
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_11
.end method
.method private f(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/activity/SendTweet;->aQ:Z
return-void
.end method
.method static synthetic g(Lcom/twidroid/activity/SendTweet;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->n()V
return-void
.end method
.method private g(Z)V
.registers 6
if-nez p1, :cond_1a
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->a()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->ci()Z
move-result v0
if-nez v0, :cond_1a
const/16 v0, 0x18f
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
:goto_19
return-void
:cond_1a
invoke-static {p0}, Lcom/twidroid/net/a/a/c;->b(Landroid/content/Context;)Lcom/twidroid/net/a/a/c;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->af:Lcom/twidroid/net/a/a/c;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->af:Lcom/twidroid/net/a/a/c;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
goto :goto_19
:cond_2b
new-instance v0, Lcom/facebook/a/e;
const-string v1, "149588628439275"
invoke-direct {v0, v1}, Lcom/facebook/a/e;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/twidroid/net/a/a/c;->a(Lcom/facebook/a/e;)V
sget-object v1, Lcom/twidroid/y;->r:[Ljava/lang/String;
const/4 v2, -0x1
new-instance v3, Lcom/twidroid/activity/SendTweet$62;
invoke-direct {v3, p0, v0}, Lcom/twidroid/activity/SendTweet$62;-><init>(Lcom/twidroid/activity/SendTweet;Lcom/facebook/a/e;)V
invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/a/e;->a(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/a/f;)V
goto :goto_19
.end method
.method private g(Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
const-string v1, "file://"
const-string v2, ""
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/io/File;
invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_7
invoke-virtual {v2}, Ljava/io/File;->delete()Z
move-result v0
goto :goto_7
.end method
.method private h()Lcom/twidroid/c/f;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aR:Lcom/twidroid/c/f;
return-object v0
.end method
.method static synthetic h(Lcom/twidroid/activity/SendTweet;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aC:Ljava/lang/String;
return-object v0
.end method
.method private h(Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ao:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ao:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_13
return-void
.end method
.method static synthetic i(Lcom/twidroid/activity/SendTweet;)J
.registers 3
iget-wide v0, p0, Lcom/twidroid/activity/SendTweet;->az:J
return-wide v0
.end method
.method private i()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->aQ:Z
return v0
.end method
.method private j()V
.registers 9
const/4 v7, 0x1
const/4 v6, 0x0
const v0, 0x7f090167
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aK:Landroid/widget/TextView;
:try_start_d
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_6d
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "android.intent.extra.SUBJECT"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_45
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v2, "android.intent.extra.SUBJECT"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->d(Ljava/lang/String;)V
:cond_45
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "android.intent.extra.TEXT"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_6d
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v2, "android.intent.extra.TEXT"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->d(Ljava/lang/String;)V
:goto_6d
:cond_6d
:try_start_6d
:try_end_6d
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_6d} :catch_1ca
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "android.intent.extra.EMAIL"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_93
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "android.intent.extra.EMAIL"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_93
const v0, 0x7f0c008d
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->finish()V
:cond_93
:try_end_93
.catch Ljava/lang/Exception; {:try_start_6d .. :try_end_93} :catch_1d0
:goto_93
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "EXTRA_ACCOUNT_ID"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ac
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v2, "EXTRA_ACCOUNT_ID"
const/4 v3, -0x1
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->setAccountByAccountId(J)V
:cond_ac
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "EXTRA_REPLY_STATUS_ID"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_c4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "EXTRA_REPLY_STATUS_ID"
const-wide/16 v2, -0x1
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/activity/SendTweet;->az:J
iput-boolean v7, p0, Lcom/twidroid/activity/SendTweet;->aA:Z
:cond_c4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "EXTRA_ORIGINAL_TEXT"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_fe
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "EXTRA_ORIGINAL_TEXT"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aC:Ljava/lang/String;
new-instance v0, Lcom/twidroid/activity/SendTweet$43;
invoke-direct {v0, p0}, Lcom/twidroid/activity/SendTweet$43;-><init>(Lcom/twidroid/activity/SendTweet;)V
new-instance v1, Lcom/twidroid/activity/SendTweet$54;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$54;-><init>(Lcom/twidroid/activity/SendTweet;)V
iget-wide v2, p0, Lcom/twidroid/activity/SendTweet;->az:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_fe
new-instance v2, Ljava/util/Timer;
invoke-direct {v2}, Ljava/util/Timer;-><init>()V
const-wide/16 v3, 0x3e8
invoke-virtual {v2, v0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
new-instance v0, Ljava/util/Timer;
invoke-direct {v0}, Ljava/util/Timer;-><init>()V
const-wide/16 v2, 0x1194
invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
:cond_fe
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "notification_id"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_115
sget-object v0, Lcom/twidroid/d/q;->a:Lcom/twidroid/d/q;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v2, "notification_id"
invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
invoke-static {v0, v1, p0}, Lcom/twidroid/d/p;->a(Lcom/twidroid/d/q;ILandroid/content/Context;)V
:cond_115
const v0, 0x7f09015d
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
new-instance v1, Lcom/twidroid/activity/SendTweet$65;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$65;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f090161
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
new-instance v1, Lcom/twidroid/activity/SendTweet$68;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$68;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:try_start_137
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
if-eqz v0, :cond_186
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
const-string v2, "ubersocial"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_159
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
const-string v2, "twitter"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_186
:cond_159
const-string v1, "com.twidroid.SendTweet"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Twidroyd:// URI called: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V
:try_end_186
.catch Ljava/lang/Exception; {:try_start_137 .. :try_end_186} :catch_1d6
:cond_186
:goto_186
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const v1, 0x7f0c0027
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v0
if-nez v0, :cond_1db
const v0, 0x7f0c02cf
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;
const/4 v0, 0x5
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
:goto_1c9
:cond_1c9
return-void
:catch_1ca
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_6d
:catch_1d0
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_93
:catch_1d6
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_186
:cond_1db
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "android.intent.extra.STREAM"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_247
:try_start_1e5
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "android.intent.extra.STREAM"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->V:Ljava/lang/String;
const-string v0, "com.twidroid.SendTweet"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "URL: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/SendTweet;->V:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->V:Ljava/lang/String;
const-string v1, "content://"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_225
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->V:Ljava/lang/String;
const-string v1, "file://"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_247
:cond_225
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v0
if-eqz v0, :cond_247
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->V:Ljava/lang/String;
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->m:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->V:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-static {p0, v0}, Lcom/twidroid/net/a/d/e;->a(Landroid/app/Activity;Landroid/net/Uri;)Z
move-result v1
if-eqz v1, :cond_29d
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->b(Landroid/net/Uri;)V
:goto_242
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->requestFocus()Z
:try_start_247
:cond_247
:try_end_247
.catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_247} :catch_2a1
:goto_247
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v1, "com.twidroid.extra.SILENTSEND"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_282
const-string v0, "com.twidroid.SendTweet"
const-string v1, "Send Background"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->ai:Z
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/activity/SendTweet;->a(ZZZ)V
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->finish()V
:try_end_263
.catch Ljava/lang/Exception; {:try_start_247 .. :try_end_263} :catch_265
goto/16 :goto_1c9
:catch_265
move-exception v0
const-string v1, "com.twidroid.SendTweet"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Send Background failed: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_282
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const/16 v1, 0x8c
if-le v0, v1, :cond_2ad
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/model/twitter/c;)V
goto/16 :goto_1c9
:cond_29d
:try_start_29d
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->a(Landroid/net/Uri;)V
:try_end_2a0
.catch Ljava/lang/Exception; {:try_start_29d .. :try_end_2a0} :catch_2a1
goto :goto_242
:catch_2a1
move-exception v0
const-string v1, "com.twidroid.SendTweet"
const-string v2, "no fattached file"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
goto :goto_247
:cond_2ad
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->A()V
const v0, 0x7f09015f
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iget-boolean v1, p0, Lcom/twidroid/activity/SendTweet;->R:Z
if-nez v1, :cond_2c5
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->ax()Z
move-result v1
if-eqz v1, :cond_2ca
:cond_2c5
iput-boolean v6, p0, Lcom/twidroid/activity/SendTweet;->R:Z
invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z
:cond_2ca
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->bM()Z
move-result v0
if-eqz v0, :cond_1c9
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V
goto/16 :goto_1c9
.end method
.method static synthetic j(Lcom/twidroid/activity/SendTweet;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->l()V
return-void
.end method
.method private k()V
.registers 4
const v0, 0x7f090157
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ScrollView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V
const v0, 0x7f090158
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/twidroid/ui/widgets/gesture/a;
new-instance v2, Lcom/twidroid/activity/SendTweet$4;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$4;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-direct {v1, v2}, Lcom/twidroid/ui/widgets/gesture/a;-><init>(Lcom/twidroid/ui/widgets/gesture/b;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_31
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
new-instance v1, Landroid/animation/LayoutTransition;
invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V
:cond_31
return-void
.end method
.method static synthetic k(Lcom/twidroid/activity/SendTweet;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->m()V
return-void
.end method
.method private l()V
.registers 5
const/4 v3, 0x1
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v0
if-nez v0, :cond_a
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
new-instance v0, Landroid/widget/TextView;
invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aT:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aT:Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->az()I
move-result v1
int-to-float v1, v1
invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aT:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f080031
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aT:Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aC:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aT:Landroid/widget/TextView;
const/16 v1, 0x13
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V
const/high16 v0, 0x40e0
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
float-to-int v0, v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aT:Landroid/widget/TextView;
invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aT:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Lcom/twidroid/activity/SendTweet$5;
invoke-direct {v0, p0}, Lcom/twidroid/activity/SendTweet$5;-><init>(Lcom/twidroid/activity/SendTweet;)V
new-instance v1, Ljava/util/Timer;
invoke-direct {v1}, Ljava/util/Timer;-><init>()V
const-wide/16 v2, 0xfa0
invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
goto :goto_9
.end method
.method static synthetic l(Lcom/twidroid/activity/SendTweet;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->C()V
return-void
.end method
.method private m()V
.registers 10
const-wide/16 v7, 0x12c
const/16 v6, 0x8
const/4 v5, 0x3
const/4 v4, 0x1
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aC:Ljava/lang/String;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aC:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_1a
iget-wide v0, p0, Lcom/twidroid/activity/SendTweet;->az:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-gtz v0, :cond_1b
:goto_1a
:cond_1a
return-void
:cond_1b
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_58
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;
move-result-object v0
invoke-virtual {v0, v4, v7, v8}, Landroid/animation/LayoutTransition;->setDuration(IJ)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;
move-result-object v0
invoke-virtual {v0, v5, v7, v8}, Landroid/animation/LayoutTransition;->setDuration(IJ)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
iget-object v2, p0, Lcom/twidroid/activity/SendTweet;->aT:Landroid/widget/TextView;
invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
goto :goto_1a
:cond_58
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aU:Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->aT:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
goto :goto_1a
.end method
.method static synthetic m(Lcom/twidroid/activity/SendTweet;)Z
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->s()Z
move-result v0
return v0
.end method
.method static synthetic n(Lcom/twidroid/activity/SendTweet;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->t()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private n()V
.registers 4
const-string v0, "input_method"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
return-void
.end method
.method private o()V
.registers 4
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I
if-eq v0, v1, :cond_20
const-string v0, "input_method"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
if-eqz v0, :cond_20
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
:cond_20
return-void
.end method
.method static synthetic o(Lcom/twidroid/activity/SendTweet;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->aA:Z
return v0
.end method
.method private p()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v1
const v0, 0x7f090157
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/twidroid/ui/themes/r;->b(Landroid/view/View;)V
const v0, 0x7f090164
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/themes/r;->b(Landroid/widget/TextView;)V
const v0, 0x7f090167
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/themes/r;->a(Landroid/widget/TextView;)V
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f02014f
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aW:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f02014e
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aV:Landroid/graphics/drawable/Drawable;
instance-of v0, v1, Lcom/twidroid/ui/themes/a;
if-eqz v0, :cond_5e
move-object v0, v1
check-cast v0, Lcom/twidroid/ui/themes/a;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a;->j()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/ui/widgets/MyEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a;->l()Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/activity/SendTweet;->aW:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a;->k()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aV:Landroid/graphics/drawable/Drawable;
:cond_5e
return-void
.end method
.method static synthetic p(Lcom/twidroid/activity/SendTweet;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->x()V
return-void
.end method
.method static synthetic q(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/c/f;
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->h()Lcom/twidroid/c/f;
move-result-object v0
return-object v0
.end method
.method private q()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;
invoke-virtual {v0}, Lcom/twidroid/net/a/b/b;->e()V
:cond_a
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
iput-boolean v2, v0, Lcom/twidroid/activity/t;->a:Z
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
invoke-virtual {v0}, Lcom/twidroid/activity/t;->c()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/twidroid/activity/t;->b(Z)Z
iput-boolean v2, p0, Lcom/twidroid/activity/SendTweet;->aq:Z
:cond_1f
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;
invoke-virtual {v0}, Lcom/twidroid/net/a/b/c;->a()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/SendTweet$6;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$6;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method static synthetic r(Lcom/twidroid/activity/SendTweet;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aS:Landroid/widget/LinearLayout;
return-object v0
.end method
.method private r()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/r;
const/16 v3, 0x20
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_b
:cond_24
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic s(Lcom/twidroid/activity/SendTweet;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->r()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private s()Z
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->t()Ljava/lang/String;
move-result-object v0
const-string v2, "native"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f
move v0, v1
:goto_e
return v0
:cond_f
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_15
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/r;
invoke-virtual {v0}, Lcom/twidroid/activity/r;->b()Z
move-result v0
if-nez v0, :cond_15
const/4 v0, 0x1
goto :goto_e
:cond_29
move v0, v1
goto :goto_e
.end method
.method private t()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
const-string v1, "image_provider4"
const-string v2, "native"
invoke-virtual {v0, v1, v2}, Lcom/twidroid/d/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic t(Lcom/twidroid/activity/SendTweet;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->aH:Z
return v0
.end method
.method static synthetic u(Lcom/twidroid/activity/SendTweet;)Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aW:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method private u()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
if-eqz v0, :cond_1a
const-string v0, ""
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
:cond_1a
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_29
:cond_22
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->v()V
:goto_25
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->n()V
return-void
:cond_29
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->q()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->s()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->b(Landroid/content/SharedPreferences$Editor;)V
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->finish()V
goto :goto_25
.end method
.method static synthetic v(Lcom/twidroid/activity/SendTweet;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aK:Landroid/widget/TextView;
return-object v0
.end method
.method private v()V
.registers 4
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f020067
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c00dd
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002b
new-instance v2, Lcom/twidroid/activity/SendTweet$9;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$9;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002e
new-instance v2, Lcom/twidroid/activity/SendTweet$8;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$8;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002a
new-instance v2, Lcom/twidroid/activity/SendTweet$7;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$7;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method private w()V
.registers 2
new-instance v0, Lcom/twidroid/activity/SendTweet$10;
invoke-direct {v0, p0}, Lcom/twidroid/activity/SendTweet$10;-><init>(Lcom/twidroid/activity/SendTweet;)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->H:Lcom/twidroid/net/c/a/a;
return-void
.end method
.method static synthetic w(Lcom/twidroid/activity/SendTweet;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->B()V
return-void
.end method
.method private x()V
.registers 9
const/4 v5, 0x0
const/4 v7, 0x0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
if-nez v0, :cond_1f
const-string v0, "Can\'t shorten empty tweet!"
invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
const-string v0, "com.twidroid.SendTweet"
const-string v1, "Someone tried to shorten empty tweet..."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_1e
return-void
:cond_1f
iput-object v5, p0, Lcom/twidroid/activity/SendTweet;->n:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0, v7}, Lcom/twidroid/ui/widgets/MyEditText;->setEnabled(Z)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v2
const-wide/16 v3, -0x1
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->q()Ljava/lang/String;
move-result-object v6
move-object v0, p0
invoke-static/range {v0 .. v6}, Lcom/twidroid/net/c/n;->a(Landroid/app/Activity;Landroid/widget/EditText;Lcom/twidroid/model/twitter/c;JLjava/lang/String;Ljava/lang/String;)Lcom/twidroid/net/c/n;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$45;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$45;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Lcom/twidroid/net/c/n;->a(Lcom/twidroid/net/c/o;)V
new-instance v1, Lcom/twidroid/net/c/p;
invoke-direct {v1}, Lcom/twidroid/net/c/p;-><init>()V
const/4 v2, 0x1
new-array v2, v2, [Lcom/twidroid/net/c/n;
aput-object v0, v2, v7
invoke-virtual {v1, v2}, Lcom/twidroid/net/c/p;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_1e
.end method
.method static synthetic x(Lcom/twidroid/activity/SendTweet;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->A()V
return-void
.end method
.method static synthetic y(Lcom/twidroid/activity/SendTweet;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->E()V
return-void
.end method
.method private y()Z
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->h()Lcom/twidroid/c/f;
move-result-object v0
if-eqz v0, :cond_13
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->h()Lcom/twidroid/c/f;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/c/f;->dismiss()V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/c/f;)V
const/4 v0, 0x1
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method static synthetic z(Lcom/twidroid/activity/SendTweet;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aP:Landroid/widget/ImageButton;
return-object v0
.end method
.method private z()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aO:Landroid/widget/ProgressBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aO:Landroid/widget/ProgressBar;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aO:Landroid/widget/ProgressBar;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->p:Lcom/twidroid/ui/themes/r;
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->C()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public a(Landroid/content/SharedPreferences$Editor;)V
.registers 5
const-string v0, "textMessage"
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v0, "postLocation"
iget-boolean v1, p0, Lcom/twidroid/activity/SendTweet;->Q:Z
invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "facebookEnabled"
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v1
invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "accountId"
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string v0, "com.twidroid.SendTweet"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "TextMessage saved: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public a(Landroid/content/SharedPreferences;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
const-string v1, "textMessage"
const-string v2, ""
invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V
:cond_19
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->c()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->a()V
const-string v0, "postLocation"
invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_65
const-string v0, "postLocation"
const/4 v1, 0x0
invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_37
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->Q:Z
:goto_37
:cond_37
const-string v0, "facebookEnabled"
invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
const-string v1, "facebookEnabled"
iget-object v2, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v2}, Lcom/twidroid/d/v;->bM()Z
move-result v2
invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
:cond_50
const-string v0, "accountId"
invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_64
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/SendTweet$67;
invoke-direct {v1, p0, p1}, Lcom/twidroid/activity/SendTweet$67;-><init>(Lcom/twidroid/activity/SendTweet;Landroid/content/SharedPreferences;)V
const-wide/16 v2, 0x64
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_64
return-void
:cond_65
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->ax()Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->R:Z
goto :goto_37
.end method
.method public a(Lcom/twidroid/model/twitter/c;)V
.registers 7
const/16 v4, 0x8c
const/16 v3, 0x21
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->al:Landroid/text/style/StyleSpan;
invoke-interface {v0}, Landroid/text/Spannable;->length()I
move-result v2
invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ak:Landroid/text/style/ForegroundColorSpan;
invoke-interface {v0}, Landroid/text/Spannable;->length()I
move-result v2
invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 8
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
invoke-virtual {v0}, Lcom/twidroid/activity/t;->g()Lcom/ubermedia/a/e;
move-result-object v0
sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;
if-ne v0, v1, :cond_23
:cond_f
new-instance v0, Lcom/twidroid/activity/t;
invoke-direct {v0, p0, v2}, Lcom/twidroid/activity/t;-><init>(Lcom/twidroid/activity/SendTweet;Z)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->z()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
aput-object p1, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/activity/t;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_23
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->bQ()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bR()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p1}, Lcom/twidroid/net/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/lang/String;Z)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/SendTweet;->V:Ljava/lang/String;
return-void
.end method
.method public a(ZZZ)V
.registers 12
const/16 v7, 0x8c
const/4 v6, 0x1
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v1
if-nez p2, :cond_72
if-nez p3, :cond_72
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_11
:goto_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_72
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/r;
invoke-virtual {v0}, Lcom/twidroid/activity/r;->b()Z
move-result v3
if-nez v3, :cond_2f
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->t()Ljava/lang/String;
move-result-object v3
const-string v4, "native"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_11
:cond_2f
iget-object v3, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v3}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_11
iget-object v3, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v5}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {v0}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V
goto :goto_11
:cond_72
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v2, "d "
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10c
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v2, "Dm "
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10c
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v2, "D "
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10c
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v2, "DM "
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10c
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v2, "dm "
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10c
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v2, "m "
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10c
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v2, "M "
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_112
:cond_10c
const/16 v0, 0x18e
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
:goto_111
:cond_111
return-void
:cond_112
if-nez p1, :cond_12e
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/net/c/g;->d(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12e
const/16 v0, 0x187
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
goto :goto_111
:cond_12e
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->r()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v0, v2
if-le v0, v7, :cond_16d
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->s()Z
move-result v0
if-eqz v0, :cond_16d
const v0, 0x7f0c0026
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
if-eqz v0, :cond_167
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_167
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_167
const/16 v0, 0x191
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
goto :goto_111
:cond_16d
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-le v2, v7, :cond_1b6
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->e()Z
move-result v0
if-eqz v0, :cond_1a4
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->a()Z
move-result v0
if-nez v0, :cond_1a4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->n()Z
move-result v0
if-eqz v0, :cond_19a
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->x()V
goto/16 :goto_111
:cond_19a
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/model/twitter/c;)V
const/16 v0, 0x186
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
goto/16 :goto_111
:cond_1a4
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->a()Z
move-result v0
if-eqz v0, :cond_111
const v0, 0x7f0c0025
invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto/16 :goto_111
:cond_1b6
if-ne v2, v7, :cond_1d9
if-eqz p2, :cond_1d9
iget-object v3, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/d/v;->q()Ljava/lang/String;
move-result-object v3
const-string v4, "Tmi"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_22c
iget-object v3, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
const-string v4, "..."
const-string v5, ".."
invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V
:cond_1d9
:goto_1d9
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
iput-boolean v6, p0, Lcom/twidroid/activity/SendTweet;->aI:Z
if-gtz v2, :cond_200
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gtz v0, :cond_200
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;
instance-of v0, v0, Lcom/twidroid/net/a/b/a;
if-eqz v0, :cond_111
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_111
:cond_200
iput-boolean v6, p0, Lcom/twidroid/activity/SendTweet;->aH:Z
invoke-virtual {p0, v6}, Lcom/twidroid/activity/SendTweet;->e(Z)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->L:Landroid/widget/TextView;
const v2, 0x7f0c0170
invoke-virtual {p0, v2}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:try_start_211
new-instance v0, Ljava/lang/Thread;
new-instance v2, Lcom/twidroid/activity/SendTweet$11;
invoke-direct {v2, p0, v1, p2}, Lcom/twidroid/activity/SendTweet$11;-><init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/model/twitter/c;Z)V
invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:try_end_21e
.catch Lcom/ubermedia/net/a/a/a; {:try_start_211 .. :try_end_21e} :catch_220
goto/16 :goto_111
:catch_220
move-exception v0
invoke-static {p0}, Lcom/twidroid/net/a/d;->a(Landroid/app/Activity;)Z
move-result v0
if-nez v0, :cond_111
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->aI:Z
goto/16 :goto_111
:cond_22c
iget-object v3, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/d/v;->q()Ljava/lang/String;
move-result-object v3
const-string v4, "Twitlonger"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1d9
iget-object v3, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
const-string v4, "(cont)"
const-string v5, "..."
invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V
goto :goto_1d9
.end method
.method public b(Landroid/content/SharedPreferences$Editor;)V
.registers 3
const-string v0, "textMessage"
invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v0, "postLocation"
invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v0, "facebookEnabled"
invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v0, "accountId"
invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public b(Lcom/twidroid/model/twitter/c;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
invoke-virtual {v0}, Lcom/twidroid/activity/t;->g()Lcom/ubermedia/a/e;
move-result-object v0
sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;
if-ne v0, v1, :cond_20
:cond_f
new-instance v0, Lcom/twidroid/activity/t;
invoke-direct {v0, p0, v2}, Lcom/twidroid/activity/t;-><init>(Lcom/twidroid/activity/SendTweet;Z)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
aput-object p1, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/activity/t;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_20
return-void
.end method
.method  b(Ljava/lang/String;)V
.registers 5
const-string v0, "ec_temp_image.png"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aJ:Ljava/io/File;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aJ:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_15
:try_start_10
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aJ:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
:cond_15
:try_end_15
.catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_58
:goto_15
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.GET_CONTENT"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, "amazon"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_63
const-string v1, "photo"
invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_5d
const-string v1, "image/*"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
:goto_37
const-string v1, "output"
iget-object v2, p0, Lcom/twidroid/activity/SendTweet;->aJ:Ljava/io/File;
invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "outputFormat"
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v0
const/16 v1, 0x54
invoke-virtual {p0, v0, v1}, Lcom/twidroid/activity/SendTweet;->startActivityForResult(Landroid/content/Intent;I)V
return-void
:catch_58
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_15
:cond_5d
const-string v1, "video/*"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
goto :goto_37
:cond_63
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "application/ubersocial-plugin.get"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
goto :goto_37
.end method
.method protected c(Ljava/lang/String;)V
.registers 6
new-instance v0, Lcom/twidroid/e/a;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bU()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v2}, Lcom/twidroid/d/v;->bT()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/twidroid/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bV()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/e/a;->h(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/twidroid/e/a;->b(Ljava/lang/String;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
iget-object v3, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v3}, Lcom/twidroid/d/v;->bS()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/e/a;->a([Ljava/lang/String;)V
const v1, 0x7f0c0116
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/e/a;->i(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bU()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/e/a;->e(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bW()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/e/a;->g(Ljava/lang/String;)V
:try_start_4c
invoke-virtual {v0}, Lcom/twidroid/e/a;->a()Z
:try_end_4f
.catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50
:goto_4f
return-void
:catch_50
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_4f
.end method
.method  d()V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/SendTweet$52;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$52;-><init>(Lcom/twidroid/activity/SendTweet;)V
const-wide/16 v2, 0x9c4
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public d(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-static {v0, p1}, Lcom/twidroid/d/u;->a(Lcom/twidroid/ui/widgets/MyEditText;Ljava/lang/String;)V
return-void
.end method
.method public d(Z)V
.registers 6
const/4 v3, 0x1
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getBaseContext()Landroid/content/Context;
move-result-object v0
const v1, 0x7f0c0173
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->aD()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v2, Lcom/twidroid/activity/SendTweet$13;
invoke-direct {v2, p0, p1}, Lcom/twidroid/activity/SendTweet$13;-><init>(Lcom/twidroid/activity/SendTweet;Z)V
invoke-static {p0, v0, v1, v2}, Lcom/twidroid/net/c/g;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/EditText;Lcom/twidroid/net/c/h;)Lcom/twidroid/net/c/j;
move-result-object v0
new-instance v1, Lcom/twidroid/net/c/i;
invoke-direct {v1}, Lcom/twidroid/net/c/i;-><init>()V
new-array v2, v3, [Lcom/twidroid/net/c/j;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/twidroid/net/c/i;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method public e()V
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
iput-boolean v4, p0, Lcom/twidroid/activity/SendTweet;->aH:Z
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aL:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_47
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/r;
invoke-virtual {v0}, Lcom/twidroid/activity/r;->f()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x2
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
iget-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->aq:Z
if-nez v0, :cond_41
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;
invoke-virtual {v0, v3}, Lcom/twidroid/net/a/b/c;->a(I)V
:cond_2d
new-instance v0, Lcom/twidroid/activity/t;
invoke-direct {v0, p0, v4}, Lcom/twidroid/activity/t;-><init>(Lcom/twidroid/activity/SendTweet;Z)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
new-array v1, v4, [Ljava/lang/Object;
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/twidroid/activity/t;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_41
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aN:Lcom/twidroid/activity/t;
invoke-virtual {v0, v4}, Lcom/twidroid/activity/t;->a(Z)V
:goto_46
return-void
:cond_47
iget-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->ai:Z
invoke-virtual {p0, v0, v3, v3}, Lcom/twidroid/activity/SendTweet;->a(ZZZ)V
goto :goto_46
.end method
.method public e(Z)V
.registers 4
if-eqz p1, :cond_d
const/4 v0, 0x1
:try_start_3
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->setProgressBarVisibility(Z)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->K:Landroid/widget/ProgressBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
:goto_c
return-void
:cond_d
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->setProgressBarVisibility(Z)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->K:Landroid/widget/ProgressBar;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
:try_end_18
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19
goto :goto_c
:catch_19
move-exception v0
goto :goto_c
.end method
.method public f()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aK:Landroid/widget/TextView;
const v1, 0x7f0c02f9
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
new-instance v0, Lcom/twidroid/net/c/a;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/d/v;->bh()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/twidroid/activity/SendTweet$64;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$64;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-direct {v0, p0, v1, v2}, Lcom/twidroid/net/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/c;)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aw:Lcom/twidroid/net/c/a;
return-void
.end method
.method public finish()V
.registers 2
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getParent()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/twidroid/TwidroidClient;
if-nez v0, :cond_b
invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V
:cond_b
return-void
.end method
.method public g()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aw:Lcom/twidroid/net/c/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aw:Lcom/twidroid/net/c/a;
invoke-virtual {v0}, Lcom/twidroid/net/c/a;->a()V
:cond_9
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/SendTweet$66;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$66;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 11
const/4 v6, -0x1
const-wide/16 v4, 0x0
const/4 v3, 0x1
const-string v0, "com.twidroid.SendTweet"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "TwidroydActivity.onActivityResult: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " / "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x54
if-ne p1, v0, :cond_11e
if-ne p2, v6, :cond_11e
const-string v0, "latitude"
invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_58
const-string v0, "longitude"
invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_58
iput-boolean v3, p0, Lcom/twidroid/activity/SendTweet;->Q:Z
const-string v0, "latitude"
invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/activity/SendTweet;->T:D
const-string v0, "longitude"
invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/activity/SendTweet;->S:D
const v0, 0x7f0c015e
invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_58
const-string v0, "place_id"
invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_6c
iput-boolean v3, p0, Lcom/twidroid/activity/SendTweet;->Q:Z
const-string v0, "place_id"
const-wide/16 v1, 0x0
invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/activity/SendTweet;->ac:J
:cond_6c
:try_start_6c
invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
if-eqz v0, :cond_119
const-string v1, "android.intent.extra.TITLE"
invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_9a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "android.intent.extra.TITLE"
invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->d(Ljava/lang/String;)V
:cond_9a
const-string v1, "android.intent.extra.SUBJECT"
invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_c2
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "android.intent.extra.SUBJECT"
invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->d(Ljava/lang/String;)V
:cond_c2
const-string v1, "android.intent.extra.TEXT"
invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_ea
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "android.intent.extra.TEXT"
invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->d(Ljava/lang/String;)V
:cond_ea
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
const-string v2, "http"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_fe
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->d(Ljava/lang/String;)V
:goto_fd
:cond_fd
return-void
:cond_fe
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
const-string v2, "content"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1d8
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/activity/SendTweet;->m:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/twidroid/net/a/d/e;->a(Landroid/app/Activity;Landroid/net/Uri;)Z
move-result v1
if-eqz v1, :cond_1cd
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->b(Landroid/net/Uri;)V
:goto_119
:cond_119
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->requestFocus()Z
:cond_11e
:goto_11e
:try_end_11e
.catch Ljava/lang/Exception; {:try_start_6c .. :try_end_11e} :catch_1d2
const/16 v0, 0x45d9
if-ne p1, v0, :cond_148
const-string v0, "com.twidroid.SendTweet"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Youtube Result "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p3}, Landroid/content/Intent;->toURI()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " / "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_148
const/16 v0, 0x8
if-ne p1, v0, :cond_18a
:try_start_14c
invoke-virtual {p3}, Landroid/content/Intent;->toURI()Ljava/lang/String;
:try_end_14f
.catch Ljava/lang/Exception; {:try_start_14c .. :try_end_14f} :catch_262
move-result-object v0
:try_start_150
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
const-string v2, "image_provider4"
const-string v3, "native"
invoke-virtual {v1, v2, v3}, Lcom/twidroid/d/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Got Filename + "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
if-ne p2, v6, :cond_18a
if-eqz v0, :cond_18a
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_18a
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->m:Ljava/lang/String;
const/16 v0, 0x17b
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->requestFocus()Z
:try_end_18a
.catch Ljava/lang/Exception; {:try_start_150 .. :try_end_18a} :catch_207
:cond_18a
:goto_18a
const/4 v0, 0x7
if-ne p1, v0, :cond_239
:try_start_18d
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ax:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
:try_end_192
.catch Ljava/lang/Exception; {:try_start_18d .. :try_end_192} :catch_265
move-result-object v0
:try_start_193
const-string v1, "com.twidroid.SendTweet"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Got MediaURI + "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p2, :cond_1c1
if-eqz v0, :cond_1c1
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_1c1
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->m:Ljava/lang/String;
const/16 v0, 0x17b
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->requestFocus()Z
:try_end_1c1
.catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1c1} :catch_211
:goto_1c1
:cond_1c1
invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V
const-string v0, "com.twidroid.SendTweet"
const-string v1, "onActivity Result called"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_fd
:cond_1cd
:try_start_1cd
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->a(Landroid/net/Uri;)V
:try_end_1d0
.catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1d0} :catch_1d2
goto/16 :goto_119
:catch_1d2
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_11e
:cond_1d8
:try_start_1d8
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
const-string v2, "https"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1fb
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v1
const-string v2, "googleusercontent.com"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_1fb
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/activity/SendTweet;->m:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->a(Landroid/net/Uri;)V
goto/16 :goto_119
:cond_1fb
const-string v0, "Plugin did not return URI"
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
:try_end_205
.catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_205} :catch_1d2
goto/16 :goto_119
:catch_207
move-exception v0
const-string v0, "com.twidroid.SendTweet"
const-string v1, "Nothing returned from gallery picker"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_18a
:catch_211
move-exception v0
const-string v0, "com.twidroid.SendTweet"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Nothing returned from "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
const-string v3, "image_provider4"
const-string v4, "native"
invoke-virtual {v2, v3, v4}, Lcom/twidroid/d/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1c1
:cond_239
const-string v0, "com.twidroid.SendTweet"
const-string v1, "Facebook result"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/twidroid/net/a/a/c;->d()Lcom/facebook/a/e;
move-result-object v0
if-eqz v0, :cond_1c1
const-string v1, "com.twidroid.SendTweet"
const-string v2, "Facebook authorizeCallback"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/e;->a(IILandroid/content/Intent;)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
if-eqz v1, :cond_fd
invoke-virtual {v0}, Lcom/facebook/a/e;->b()Z
move-result v0
if-nez v0, :cond_fd
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
goto/16 :goto_fd
:catch_262
move-exception v0
goto/16 :goto_fd
:catch_265
move-exception v0
goto/16 :goto_fd
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I
if-ne v0, v1, :cond_27
move v0, v1
:goto_7
iput-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->ab:Z
invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->h()Lcom/twidroid/c/f;
move-result-object v0
if-eqz v0, :cond_26
invoke-static {p0}, Lcom/twidroid/d/a;->c(Landroid/app/Activity;)[I
move-result-object v0
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->h()Lcom/twidroid/c/f;
move-result-object v3
aget v2, v0, v2
aget v0, v0, v1
invoke-static {p0}, Lcom/twidroid/d/a;->b(Landroid/app/Activity;)I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {v3, v2, v0}, Lcom/twidroid/c/f;->a(II)V
:cond_26
return-void
:cond_27
move v0, v2
goto :goto_7
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/twidroid/activity/SendTweet; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/activity/SendTweet;->ah:J
const-string v0, "com.twidroid.SendTweet"
const-string v1, "onCreate..."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
const-string v0, "com.twidroid.SendTweet"
const-string v1, "application..."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->p:Lcom/twidroid/ui/themes/r;
invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V
const-string v0, "com.twidroid.SendTweet"
const-string v1, "super.onCreate..."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getIntent()Landroid/content/Intent;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
new-instance v0, Lcom/twidroid/d/v;
invoke-direct {v0, p0}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
const-string v0, "com.twidroid.SendTweet"
const-string v1, "UberSocialPreferences..."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->k()V
const v0, 0x7f03006a
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->setContentView(I)V
const-string v0, "setContentView"
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->e(Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-direct {v0, p0}, Lcom/twidroid/ui/widgets/AccountSpinner;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
new-instance v1, Lcom/twidroid/activity/SendTweet$12;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$12;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setAccountChangeListener(Lcom/twidroid/ui/widgets/c;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->h()Ljava/lang/String;
move-result-object v0
const-string v1, "bright"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_158
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
const v1, 0x7f020197
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setBackgroundResource(I)V
:goto_7b
const-string v0, "mAccountSpinnerView"
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->setAccountByAccountId(J)V
const v0, 0x7f090162
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->ag:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->a()Landroid/support/v7/app/ActionBar;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->c(Z)V
const-string v0, "action bar done"
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/b/c;->a(Landroid/content/Context;)V
new-instance v0, Lcom/twidroid/activity/SendTweet$23;
invoke-direct {v0, p0}, Lcom/twidroid/activity/SendTweet$23;-><init>(Lcom/twidroid/activity/SendTweet;)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
const v0, 0x7f09016a
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->L:Landroid/widget/TextView;
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->w()V
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->c(Landroid/content/Intent;)V
const-string v0, "assignLayoutVariables"
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->e(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f02014f
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aW:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f02014e
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aV:Landroid/graphics/drawable/Drawable;
const v0, 0x7f09016b
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aS:Landroid/widget/LinearLayout;
const v0, 0x7f090159
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->aO:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->aO:Landroid/widget/ProgressBar;
const/16 v1, 0x64
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->a()Landroid/support/v7/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->c()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->e(Z)V
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->a()Landroid/support/v7/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/view/View;)V
const v0, 0x7f09015b
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bM()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-eqz v0, :cond_145
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->g(Z)V
:cond_145
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
new-instance v1, Lcom/twidroid/activity/SendTweet$34;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$34;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->j()V
const-string v0, "oncreate done"
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->e(Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/activity/SendTweet; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_158
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->o:Lcom/twidroid/ui/widgets/AccountSpinner;
const v1, 0x7f020198
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setBackgroundResource(I)V
goto/16 :goto_7b
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 10
const v4, -0x777778
const v3, 0x7f0c0103
const/4 v2, 0x1
const v5, 0x7f0c002c
const v7, 0x7f020067
sparse-switch p1, :sswitch_data_408
:sswitch_10
const/4 v0, 0x0
:cond_11
:goto_11
return-object v0
:sswitch_12
new-instance v0, Landroid/widget/CheckBox;
invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V
const v1, 0x7f0c0225
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextColor(I)V
invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
new-instance v1, Lcom/twidroid/activity/SendTweet$14;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$14;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
new-instance v1, Landroid/app/AlertDialog$Builder;
invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0226
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0228
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
new-instance v2, Lcom/twidroid/activity/SendTweet$16;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$16;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0029
new-instance v3, Lcom/twidroid/activity/SendTweet$15;
invoke-direct {v3, p0}, Lcom/twidroid/activity/SendTweet$15;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto :goto_11
:sswitch_64
new-instance v0, Landroid/widget/CheckBox;
invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V
const v1, 0x7f0c0225
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextColor(I)V
invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
new-instance v1, Lcom/twidroid/activity/SendTweet$17;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$17;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
new-instance v1, Landroid/app/AlertDialog$Builder;
invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0227
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0228
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
new-instance v2, Lcom/twidroid/activity/SendTweet$19;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$19;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0029
new-instance v3, Lcom/twidroid/activity/SendTweet$18;
invoke-direct {v3, p0}, Lcom/twidroid/activity/SendTweet$18;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
new-instance v1, Lcom/twidroid/activity/SendTweet$20;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$20;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
goto/16 :goto_11
:sswitch_c3
new-instance v0, Landroid/widget/CheckBox;
invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V
const v1, 0x7f0c0225
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextColor(I)V
invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
new-instance v1, Lcom/twidroid/activity/SendTweet$21;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$21;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
new-instance v1, Landroid/app/AlertDialog$Builder;
invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0226
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0228
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
new-instance v2, Lcom/twidroid/activity/SendTweet$24;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$24;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0029
new-instance v3, Lcom/twidroid/activity/SendTweet$22;
invoke-direct {v3, p0}, Lcom/twidroid/activity/SendTweet$22;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto/16 :goto_11
:sswitch_116
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c02c2
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c02d0
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$25;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$25;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto/16 :goto_11
:sswitch_13c
new-instance v0, Landroid/widget/CheckBox;
invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V
const v1, 0x7f0c00c9
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextColor(I)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
new-instance v1, Lcom/twidroid/activity/SendTweet$26;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$26;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
new-instance v1, Landroid/app/AlertDialog$Builder;
invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0300
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$27;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$27;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto/16 :goto_11
:sswitch_17d
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c00fc
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c00eb
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
const-string v2, "%s"
iget-object v3, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v3}, Lcom/twidroid/d/v;->aD()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002b
new-instance v2, Lcom/twidroid/activity/SendTweet$29;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$29;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002a
new-instance v2, Lcom/twidroid/activity/SendTweet$28;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$28;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto/16 :goto_11
:sswitch_1c6
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->G()Lcom/twidroid/model/twitter/c;
move-result-object v2
const-wide/16 v3, -0x1
const/4 v5, 0x0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->q()Ljava/lang/String;
move-result-object v6
move-object v0, p0
invoke-static/range {v0 .. v6}, Lcom/twidroid/net/c/n;->a(Landroid/app/Activity;Landroid/widget/EditText;Lcom/twidroid/model/twitter/c;JLjava/lang/String;Ljava/lang/String;)Lcom/twidroid/net/c/n;
move-result-object v0
new-instance v1, Landroid/app/AlertDialog$Builder;
invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0305
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c0304
invoke-virtual {p0, v2}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "%s"
invoke-virtual {v0}, Lcom/twidroid/net/c/n;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002b
new-instance v2, Lcom/twidroid/activity/SendTweet$31;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$31;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002a
new-instance v2, Lcom/twidroid/activity/SendTweet$30;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$30;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto/16 :goto_11
:sswitch_225
new-instance v0, Lcom/twidroid/activity/SendTweet$32;
invoke-direct {v0, p0, p0}, Lcom/twidroid/activity/SendTweet$32;-><init>(Lcom/twidroid/activity/SendTweet;Landroid/content/Context;)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/d/v;->at()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/c/j;->a(Z)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0, v1}, Lcom/twidroid/c/j;->a(Lcom/twidroid/UberSocialApplication;)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->length()I
move-result v1
if-le v1, v2, :cond_11
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->length()I
move-result v2
add-int/lit8 v2, v2, -0x1
iget-object v3, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v3}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-interface {v3}, Landroid/text/Editable;->length()I
move-result v3
invoke-interface {v1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/c/j;->b(Ljava/lang/String;)V
goto/16 :goto_11
:sswitch_271
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
const-string v3, "image_provider4"
const-string v4, "native"
invoke-virtual {v2, v3, v4}, Lcom/twidroid/d/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " error"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$35;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$35;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0115
new-instance v2, Lcom/twidroid/activity/SendTweet$33;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$33;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto/16 :goto_11
:sswitch_2c0
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0, v3}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const v2, 0x7f0c0335
invoke-virtual {p0, v2}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$36;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$36;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto/16 :goto_11
:sswitch_304
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {p0, v3}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$37;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$37;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto/16 :goto_11
:sswitch_32a
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {p0, v3}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$39;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$39;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$38;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$38;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto/16 :goto_11
:sswitch_359
new-instance v0, Lcom/twidroid/activity/SendTweet$40;
invoke-direct {v0, p0, p0}, Lcom/twidroid/activity/SendTweet$40;-><init>(Lcom/twidroid/activity/SendTweet;Landroid/content/Context;)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ay:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0, v1}, Lcom/twidroid/c/k;->a(Lcom/twidroid/UberSocialApplication;)V
const-string v1, "#"
invoke-virtual {v0, v1}, Lcom/twidroid/c/k;->b(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/twidroid/c/k;->show()V
goto/16 :goto_11
:sswitch_36d
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setIcon(I)V
const-string v0, "Uploading files"
iput-object v0, p0, Lcom/twidroid/activity/SendTweet;->ap:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ap:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
const v1, 0x7f0c0179
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
iget v1, p0, Lcom/twidroid/activity/SendTweet;->Y:I
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
const v1, 0x7f0c0029
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
new-instance v2, Lcom/twidroid/activity/SendTweet$41;
invoke-direct {v2, p0}, Lcom/twidroid/activity/SendTweet$41;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
goto/16 :goto_11
:sswitch_3bc
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {p0, v3}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$42;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$42;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto/16 :goto_11
:sswitch_3e2
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {p0, v3}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$44;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$44;-><init>(Lcom/twidroid/activity/SendTweet;)V
invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto/16 :goto_11
:sswitch_data_408
.sparse-switch
0x1 -> :sswitch_304
0x2 -> :sswitch_36d
0x3 -> :sswitch_271
0x5 -> :sswitch_32a
0x174 -> :sswitch_225
0x177 -> :sswitch_2c0
0x186 -> :sswitch_1c6
0x187 -> :sswitch_17d
0x188 -> :sswitch_13c
0x18c -> :sswitch_359
0x18e -> :sswitch_116
0x18f -> :sswitch_64
0x190 -> :sswitch_10
0x191 -> :sswitch_3bc
0x192 -> :sswitch_3e2
0x2b3 -> :sswitch_c3
0x2b4 -> :sswitch_12
.end sparse-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/SendTweet; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x2
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ag:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setCharCounterText(Ljava/lang/Object;)V
const/4 v0, 0x3
const v1, 0x7f0c02ce
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V
const-string v0, "Shrink URL"
invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x108002d
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x4
const v1, 0x7f0c02d5
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x108003a
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x5
const v1, 0x7f0c0188
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x108002b
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x6
const v1, 0x7f0c0187
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020108
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x7
const v1, 0x7f0c0189
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020107
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/twidroid/activity/SendTweet; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/SendTweet; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->D()V
const-string v1, " - Lcom/twidroid/activity/SendTweet; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v0, 0x1
const-string v1, "com.twidroid.SendTweet"
const-string v2, "onKeyDown"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x4
if-ne p1, v1, :cond_16
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->y()Z
move-result v1
if-eqz v1, :cond_12
:goto_11
return v0
:cond_12
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->u()V
goto :goto_11
:cond_16
const/4 v0, 0x0
goto :goto_11
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/SendTweet; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
const v2, 0x102002c
if-eq v1, v2, :cond_10
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
if-nez v1, :cond_14
:cond_10
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->u()V
:goto_13
move v2, v0
const-string v1, " - Lcom/twidroid/activity/SendTweet; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_14
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
packed-switch v1, :pswitch_data_4a
invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_13
:pswitch_20
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/twidroid/activity/SendTweet;->d(Z)V
goto :goto_13
:pswitch_25
invoke-virtual {p0}, Lcom/twidroid/activity/SendTweet;->e()V
goto :goto_13
:pswitch_29
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->F()V
goto :goto_13
:pswitch_2d
const/16 v1, 0x18c
invoke-static {p0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
goto :goto_13
:pswitch_33
const/16 v1, 0x174
invoke-static {p0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
goto :goto_13
:pswitch_39
new-instance v1, Lcom/twidroid/c/n;
invoke-direct {v1, p0}, Lcom/twidroid/c/n;-><init>(Landroid/content/Context;)V
new-instance v2, Lcom/twidroid/activity/SendTweet$60;
invoke-direct {v2, p0, v1}, Lcom/twidroid/activity/SendTweet$60;-><init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/c/n;)V
invoke-virtual {v1, v2}, Lcom/twidroid/c/n;->a(Lcom/twidroid/c/o;)V
invoke-virtual {v1}, Lcom/twidroid/c/n;->show()V
goto :goto_13
:pswitch_data_4a
.packed-switch 0x2
:pswitch_20
:pswitch_25
:pswitch_29
:pswitch_39
:pswitch_2d
:pswitch_33
.end packed-switch
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/SendTweet; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "com.twidroid.SendTweet"
const-string v1, "pausing..."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V
const-string v1, " - Lcom/twidroid/activity/SendTweet; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPrepareDialog(ILandroid/app/Dialog;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
if-eqz v0, :cond_e
const/4 v0, 0x2
if-ne p1, v0, :cond_e
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet;->ap:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V
:cond_e
return-void
.end method
.method protected onResume()V
.registers 5
const-string v1, " + Lcom/twidroid/activity/SendTweet; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "resuming... "
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->e(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->s()Landroid/content/SharedPreferences;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/SendTweet;->a(Landroid/content/SharedPreferences;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/SendTweet$58;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$58;-><init>(Lcom/twidroid/activity/SendTweet;)V
const-wide/16 v2, 0x64
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
const-string v1, " - Lcom/twidroid/activity/SendTweet; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/SendTweet; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V
const-string v0, "onstart... "
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->e(Ljava/lang/String;)V
sget-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/twidroid/net/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
const-string v0, "onstart done... "
invoke-direct {p0, v0}, Lcom/twidroid/activity/SendTweet;->e(Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/activity/SendTweet; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/SendTweet; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V
const-string v0, "com.twidroid.SendTweet"
const-string v1, "stopping..."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/twidroid/net/a/a;->a(Landroid/content/Context;)V
iget-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->aB:Z
if-nez v0, :cond_15
invoke-direct {p0}, Lcom/twidroid/activity/SendTweet;->C()V
:goto_14
const-string v1, " - Lcom/twidroid/activity/SendTweet; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_15
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/activity/SendTweet;->aB:Z
goto :goto_14
.end method