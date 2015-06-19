.class public Lcom/glympse/android/hal/Reflection$_NfcEvent;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static dR:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_NfcEvent;->cR:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_NfcEvent;->dR:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Load()V
    .registers 2

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_NfcEvent;->cR:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_NfcEvent;->cR:Z

    :try_start_7
    const-string v0, "android.nfc.NfcEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_NfcEvent;->dR:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    const/4 v0, 0x5

    const-string v1, "Failure locating NfcEvent via reflection"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_f
.end method

.method static synthetic P()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/Reflection$_NfcEvent;->dR:Ljava/lang/Class;

    return-object v0
.end method
