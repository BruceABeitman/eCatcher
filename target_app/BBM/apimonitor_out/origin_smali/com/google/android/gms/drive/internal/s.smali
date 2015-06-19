.class public Lcom/google/android/gms/drive/internal/s;
.super Lcom/google/android/gms/drive/internal/w$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/gms/drive/events/DriveEvent;",
        ">",
        "Lcom/google/android/gms/drive/internal/w$a;"
    }
.end annotation


# instance fields
.field private final DR:Lcom/google/android/gms/drive/events/DriveEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final DS:Lcom/google/android/gms/drive/internal/s$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/internal/s$a",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final Dm:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;ILcom/google/android/gms/drive/events/DriveEvent$Listener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "I",
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/w$a;-><init>()V

    iput p2, p0, Lcom/google/android/gms/drive/internal/s;->Dm:I

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/s;->DR:Lcom/google/android/gms/drive/events/DriveEvent$Listener;

    new-instance v0, Lcom/google/android/gms/drive/internal/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/s$a;-><init>(Landroid/os/Looper;Lcom/google/android/gms/drive/internal/s$1;)V

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/s;->DS:Lcom/google/android/gms/drive/internal/s$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/internal/OnEventResponse;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/drive/internal/s;->Dm:I

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->getEventType()I

    move-result v1

    if-ne v0, v1, :cond_2c

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/er;->v(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    const-string v0, "EventCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected event type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->getEventType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_9

    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/s;->DS:Lcom/google/android/gms/drive/internal/s$a;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/s;->DR:Lcom/google/android/gms/drive/events/DriveEvent$Listener;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->fa()Lcom/google/android/gms/drive/events/ChangeEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/internal/s$a;->a(Lcom/google/android/gms/drive/events/DriveEvent$Listener;Lcom/google/android/gms/drive/events/DriveEvent;)V

    goto :goto_2b

    :pswitch_3a
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/s;->DS:Lcom/google/android/gms/drive/internal/s$a;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/s;->DR:Lcom/google/android/gms/drive/events/DriveEvent$Listener;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->fb()Lcom/google/android/gms/drive/events/ConflictEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/internal/s$a;->a(Lcom/google/android/gms/drive/events/DriveEvent$Listener;Lcom/google/android/gms/drive/events/DriveEvent;)V

    goto :goto_2b

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_3a
    .end packed-switch
.end method
