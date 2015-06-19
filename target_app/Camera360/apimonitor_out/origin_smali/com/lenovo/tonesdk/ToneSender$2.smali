.class Lcom/lenovo/tonesdk/ToneSender$2;
.super Ljava/lang/Object;
.source "ToneSender.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/tonesdk/ToneSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/tonesdk/ToneSender;


# direct methods
.method constructor <init>(Lcom/lenovo/tonesdk/ToneSender;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/tonesdk/ToneSender$2;->a:Lcom/lenovo/tonesdk/ToneSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 2

    return-void
.end method
