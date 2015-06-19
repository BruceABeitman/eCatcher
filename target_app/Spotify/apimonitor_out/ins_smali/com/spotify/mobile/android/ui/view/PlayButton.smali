.class public Lcom/spotify/mobile/android/ui/view/PlayButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field public static final a:Lcom/spotify/mobile/android/ui/view/o;
.field private b:Landroid/view/View;
.field private c:Landroid/view/View;
.field private d:I
.field private e:Lcom/spotify/mobile/android/ui/view/o;
.field private f:Landroid/view/View$OnClickListener;
.field private final g:Landroid/view/View$OnLongClickListener;
.field private h:Landroid/view/View$OnClickListener;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/ui/view/PlayButton$4;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/view/PlayButton$4;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/view/PlayButton;->a:Lcom/spotify/mobile/android/ui/view/o;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/view/PlayButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 8
const/4 v3, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v3, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->d:I
sget-object v0, Lcom/spotify/mobile/android/ui/view/PlayButton;->a:Lcom/spotify/mobile/android/ui/view/o;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->e:Lcom/spotify/mobile/android/ui/view/o;
new-instance v0, Lcom/spotify/mobile/android/ui/view/PlayButton$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/PlayButton$1;-><init>(Lcom/spotify/mobile/android/ui/view/PlayButton;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->f:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/view/PlayButton$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/PlayButton$2;-><init>(Lcom/spotify/mobile/android/ui/view/PlayButton;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->g:Landroid/view/View$OnLongClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/view/PlayButton$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/PlayButton$3;-><init>(Lcom/spotify/mobile/android/ui/view/PlayButton;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->h:Landroid/view/View$OnClickListener;
const-string v0, "layout_inflater"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
const v1, 0x7f0300b7
const/4 v2, 0x1
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v0
sget-object v1, Lcom/spotify/music/d;->E:[I
invoke-virtual {v0, p2, v1, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v1
const/4 v0, 0x0
const/4 v2, 0x0
:try_start_3a
invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->d:I
:try_end_40
.catchall {:try_start_3a .. :try_end_40} :catchall_85
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
const v0, 0x7f0a0337
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PlayButton;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->b:Landroid/view/View;
const v0, 0x7f0a0338
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PlayButton;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->c:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->b:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->f:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->b:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->g:Landroid/view/View$OnLongClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->c:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->h:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->b:Landroid/view/View;
iget v1, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->d:I
iget v2, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->d:I
iget v3, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->d:I
iget v4, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->d:I
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->c:Landroid/view/View;
iget v1, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->d:I
iget v2, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->d:I
iget v3, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->d:I
iget v4, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->d:I
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V
return-void
:catchall_85
move-exception v0
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
throw v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/PlayButton;)Lcom/spotify/mobile/android/ui/view/o;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->e:Lcom/spotify/mobile/android/ui/view/o;
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/ui/view/o;)V
.registers 3
const-string v0, "Don\'t call setPlayController with null controller"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->e:Lcom/spotify/mobile/android/ui/view/o;
return-void
.end method
.method public final a(Z)V
.registers 6
const/16 v1, 0x8
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->b:Landroid/view/View;
if-eqz p1, :cond_13
move v0, v1
:goto_8
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton;->c:Landroid/view/View;
if-nez p1, :cond_15
:goto_f
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_13
move v0, v2
goto :goto_8
:cond_15
move v1, v2
goto :goto_f
.end method