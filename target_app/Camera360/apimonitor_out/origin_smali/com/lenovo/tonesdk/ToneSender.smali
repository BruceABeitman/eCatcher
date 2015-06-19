.class public final Lcom/lenovo/tonesdk/ToneSender;
.super Ljava/lang/Object;
.source "ToneSender.java"

# interfaces
.implements Lcom/lenovo/tonesdk/IToneSender;


# instance fields
.field private a:Lcom/lenovo/anyshare/sdk/internal/cs;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/16 v0, 0x3e8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->a:Lcom/lenovo/anyshare/sdk/internal/cs;

    iput-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->b:Landroid/content/Context;

    iput v0, p0, Lcom/lenovo/tonesdk/ToneSender;->c:I

    iput v0, p0, Lcom/lenovo/tonesdk/ToneSender;->d:I

    new-instance v0, Lcom/lenovo/tonesdk/ToneSender$2;

    invoke-direct {v0, p0}, Lcom/lenovo/tonesdk/ToneSender$2;-><init>(Lcom/lenovo/tonesdk/ToneSender;)V

    iput-object v0, p0, Lcom/lenovo/tonesdk/ToneSender;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p1, p0, Lcom/lenovo/tonesdk/ToneSender;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public configure(II)V
    .registers 3

    if-lez p1, :cond_9

    :goto_2
    iput p1, p0, Lcom/lenovo/tonesdk/ToneSender;->c:I

    if-lez p2, :cond_b

    :goto_6
    iput p2, p0, Lcom/lenovo/tonesdk/ToneSender;->d:I

    return-void

    :cond_9
    const/4 p1, 0x1

    goto :goto_2

    :cond_b
    const/4 p2, 0x0

    goto :goto_6
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/tonesdk/ToneSender;->a:Lcom/lenovo/anyshare/sdk/internal/cs;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public start(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->b:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->a:Lcom/lenovo/anyshare/sdk/internal/cs;

    if-nez v1, :cond_27

    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/cs;

    iget-object v2, p0, Lcom/lenovo/tonesdk/ToneSender;->b:Landroid/content/Context;

    new-instance v3, Lcom/lenovo/tonesdk/ToneSender$1;

    invoke-direct {v3, p0}, Lcom/lenovo/tonesdk/ToneSender$1;-><init>(Lcom/lenovo/tonesdk/ToneSender;)V

    invoke-direct {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cs;-><init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/ct;)V

    iput-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->a:Lcom/lenovo/anyshare/sdk/internal/cs;

    :cond_27
    iget-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->a:Lcom/lenovo/anyshare/sdk/internal/cs;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cs;->b()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->a:Lcom/lenovo/anyshare/sdk/internal/cs;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cs;->a()V

    :cond_34
    iget-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->a:Lcom/lenovo/anyshare/sdk/internal/cs;

    iget v2, p0, Lcom/lenovo/tonesdk/ToneSender;->c:I

    iget v3, p0, Lcom/lenovo/tonesdk/ToneSender;->d:I

    int-to-long v3, v3

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/lenovo/anyshare/sdk/internal/cs;->a(Ljava/lang/String;IJ)Z

    return-void
.end method

.method public stop()V
    .registers 4

    iget-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->a:Lcom/lenovo/anyshare/sdk/internal/cs;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->a:Lcom/lenovo/anyshare/sdk/internal/cs;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cs;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->a:Lcom/lenovo/anyshare/sdk/internal/cs;

    :cond_c
    iget-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->b:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/lenovo/tonesdk/ToneSender;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method
