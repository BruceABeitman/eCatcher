.class public Lcom/bbm/ui/QuickShareVoicenoteView;
.super Lcom/bbm/ui/QuickShareBaseView;
.source "QuickShareVoicenoteView.java"


# static fields
.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private final g:Landroid/os/Handler;

.field private h:Z

.field private i:Z

.field private j:Lcom/bbm/ui/fk;

.field private k:Lcom/bbm/util/fg;

.field private final n:Lcom/bbm/util/fi;

.field private final o:Ljava/lang/Runnable;

.field private final p:Lcom/bbm/j/k;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "voice_recording_start.wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/QuickShareVoicenoteView;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "voice_recording_stop.wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/QuickShareVoicenoteView;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/QuickShareBaseView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->i:Z

    new-instance v0, Lcom/bbm/ui/fc;

    invoke-direct {v0, p0}, Lcom/bbm/ui/fc;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->n:Lcom/bbm/util/fi;

    new-instance v0, Lcom/bbm/ui/fd;

    invoke-direct {v0, p0}, Lcom/bbm/ui/fd;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->o:Ljava/lang/Runnable;

    new-instance v0, Lcom/bbm/ui/fe;

    invoke-direct {v0, p0}, Lcom/bbm/ui/fe;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->p:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/ff;

    invoke-direct {v0, p0}, Lcom/bbm/ui/ff;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->q:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/bbm/ui/QuickShareVoicenoteView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/QuickShareBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->i:Z

    new-instance v0, Lcom/bbm/ui/fc;

    invoke-direct {v0, p0}, Lcom/bbm/ui/fc;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->n:Lcom/bbm/util/fi;

    new-instance v0, Lcom/bbm/ui/fd;

    invoke-direct {v0, p0}, Lcom/bbm/ui/fd;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->o:Ljava/lang/Runnable;

    new-instance v0, Lcom/bbm/ui/fe;

    invoke-direct {v0, p0}, Lcom/bbm/ui/fe;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->p:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/ff;

    invoke-direct {v0, p0}, Lcom/bbm/ui/ff;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->q:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/bbm/ui/QuickShareVoicenoteView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/QuickShareBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->i:Z

    new-instance v0, Lcom/bbm/ui/fc;

    invoke-direct {v0, p0}, Lcom/bbm/ui/fc;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->n:Lcom/bbm/util/fi;

    new-instance v0, Lcom/bbm/ui/fd;

    invoke-direct {v0, p0}, Lcom/bbm/ui/fd;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->o:Ljava/lang/Runnable;

    new-instance v0, Lcom/bbm/ui/fe;

    invoke-direct {v0, p0}, Lcom/bbm/ui/fe;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->p:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/ff;

    invoke-direct {v0, p0}, Lcom/bbm/ui/ff;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->q:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/bbm/ui/QuickShareVoicenoteView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/bbm/ui/fj;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {p0}, Lcom/bbm/ui/QuickShareVoicenoteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v1, Lcom/bbm/ui/fg;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/fg;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v1, Lcom/bbm/ui/fh;

    invoke-direct {v1, p0, p2, v0}, Lcom/bbm/ui/fh;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;Lcom/bbm/ui/fj;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error playing voice recorder sound: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    if-eqz p2, :cond_23

    invoke-interface {p2}, Lcom/bbm/ui/fj;->a()V

    goto :goto_23
.end method

.method private a(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->a:Landroid/widget/ImageView;

    const v1, 0x7f020388

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->b:Landroid/widget/ImageView;

    const v1, 0x7f02037c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->c:Landroid/widget/TextView;

    const v1, 0x7f0e05f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bbm/ui/QuickShareVoicenoteView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iput-boolean v3, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->h:Z

    iget-object v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->k:Lcom/bbm/util/fg;

    if-eqz p1, :cond_4d

    iget-object v0, v1, Lcom/bbm/util/fg;->d:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, v1, Lcom/bbm/util/fg;->d:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4d
    invoke-virtual {v1}, Lcom/bbm/util/fg;->a()V

    iput-boolean v3, v1, Lcom/bbm/util/fg;->e:Z

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->j:Lcom/bbm/ui/fk;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->j:Lcom/bbm/ui/fk;

    :cond_58
    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/QuickShareVoicenoteView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/bbm/ui/QuickShareVoicenoteView;)V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/bbm/ui/QuickShareVoicenoteView;->l:Ljava/lang/String;

    new-instance v1, Lcom/bbm/ui/fi;

    invoke-direct {v1, p0}, Lcom/bbm/ui/fi;-><init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    invoke-direct {p0, v0, v1}, Lcom/bbm/ui/QuickShareVoicenoteView;->a(Ljava/lang/String;Lcom/bbm/ui/fj;)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->a:Landroid/widget/ImageView;

    const v1, 0x7f020389

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->c:Landroid/widget/TextView;

    const v1, 0x7f0e05f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iput-boolean v3, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->h:Z

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private c()V
    .registers 4

    const/4 v2, 0x1

    new-instance v0, Lcom/bbm/util/fg;

    invoke-virtual {p0}, Lcom/bbm/ui/QuickShareVoicenoteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/util/fg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->k:Lcom/bbm/util/fg;

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->k:Lcom/bbm/util/fg;

    iget-object v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->n:Lcom/bbm/util/fi;

    iput-object v1, v0, Lcom/bbm/util/fg;->f:Lcom/bbm/util/fi;

    invoke-virtual {p0, v2}, Lcom/bbm/ui/QuickShareVoicenoteView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/QuickShareVoicenoteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030140

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a063f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a063d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a063e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->d:Landroid/view/View;

    const v0, 0x7f0a063a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->c:Landroid/widget/TextView;

    const v0, 0x7f0a063c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->e:Landroid/view/View;

    const v0, 0x7f0a063b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method static synthetic c(Lcom/bbm/ui/QuickShareVoicenoteView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/QuickShareVoicenoteView;)Lcom/bbm/util/fg;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->k:Lcom/bbm/util/fg;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/QuickShareVoicenoteView;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->p:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    invoke-super {p0}, Lcom/bbm/ui/QuickShareBaseView;->a()V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->p:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Lcom/bbm/ui/QuickShareBaseView;->b()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/QuickShareBaseView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->a(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const v7, 0x7f02037c

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->i:Z

    if-eqz v0, :cond_9e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->j:Lcom/bbm/ui/fk;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->j:Lcom/bbm/ui/fk;

    if-eqz v0, :cond_9e

    iget-object v4, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->j:Lcom/bbm/ui/fk;

    if-ne v2, v1, :cond_a3

    move v0, v1

    :goto_1a
    invoke-interface {v4, v0}, Lcom/bbm/ui/fk;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_9e

    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->a:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    packed-switch v2, :pswitch_data_120

    :pswitch_35
    iget-object v2, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->g:Landroid/os/Handler;

    iget-object v5, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->o:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->h:Z

    if-eqz v2, :cond_100

    iget-object v2, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->a:Landroid/widget/ImageView;

    invoke-static {v0, v4, v2}, Lcom/bbm/util/ff;->a(IILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->a:Landroid/widget/ImageView;

    const v1, 0x7f020388

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->c:Landroid/widget/TextView;

    const v1, 0x7f0e05f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bbm/ui/QuickShareVoicenoteView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iput-boolean v3, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->h:Z

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->k:Lcom/bbm/util/fg;

    invoke-virtual {v0}, Lcom/bbm/util/fg;->b()V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->j:Lcom/bbm/ui/fk;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->j:Lcom/bbm/ui/fk;

    iget-object v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->k:Lcom/bbm/util/fg;

    iget-object v1, v1, Lcom/bbm/util/fg;->d:Lcom/google/b/a/l;

    invoke-interface {v0, v1}, Lcom/bbm/ui/fk;->a(Lcom/google/b/a/l;)V

    :cond_8c
    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v0, Lcom/bbm/ui/QuickShareVoicenoteView;->m:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bbm/ui/QuickShareVoicenoteView;->a(Ljava/lang/String;Lcom/bbm/ui/fj;)V

    :cond_9e
    :goto_9e
    invoke-super {p0, p1}, Lcom/bbm/ui/QuickShareBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_a3
    move v0, v3

    goto/16 :goto_1a

    :pswitch_a6
    iget-boolean v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->h:Z

    if-nez v1, :cond_9e

    iget-object v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->a:Landroid/widget/ImageView;

    invoke-static {v0, v4, v1}, Lcom/bbm/util/ff;->a(IILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9e

    :pswitch_bc
    iget-boolean v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->h:Z

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->a:Landroid/widget/ImageView;

    invoke-static {v0, v4, v1}, Lcom/bbm/util/ff;->a(IILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->c:Landroid/widget/TextView;

    const v1, 0x7f0e05f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_9e

    :cond_db
    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->b:Landroid/widget/ImageView;

    const v1, 0x7f02037d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->c:Landroid/widget/TextView;

    const v1, 0x7f0e05f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bbm/ui/QuickShareVoicenoteView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_9e

    :cond_fc
    invoke-direct {p0, v1}, Lcom/bbm/ui/QuickShareVoicenoteView;->a(Z)V

    goto :goto_9e

    :cond_100
    iget-object v1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->a:Landroid/widget/ImageView;

    invoke-static {v0, v4, v1}, Lcom/bbm/util/ff;->a(IILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {p0}, Lcom/bbm/ui/QuickShareVoicenoteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/QuickShareVoicenoteView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e05f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V

    goto :goto_9e

    nop

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_a6
        :pswitch_35
        :pswitch_bc
    .end packed-switch
.end method

.method public setVoiceNoteActionsListener(Lcom/bbm/ui/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/QuickShareVoicenoteView;->j:Lcom/bbm/ui/fk;

    return-void
.end method
