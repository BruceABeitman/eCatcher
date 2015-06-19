.class Lcom/glympse/android/lib/gc;
.super Ljava/lang/Object;
.source "ModifyWizardListener.java"

# interfaces
.implements Lcom/glympse/android/hal/GUiControlListener;


# instance fields
.field private cI:Lcom/glympse/android/api/GGlympse;

.field private nT:Lcom/glympse/android/lite/GTicketLite;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lite/GTicketLite;Lcom/glympse/android/api/GGlympse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/gc;->nT:Lcom/glympse/android/lite/GTicketLite;

    iput-object p2, p0, Lcom/glympse/android/lib/gc;->cI:Lcom/glympse/android/api/GGlympse;

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/gc;->nT:Lcom/glympse/android/lite/GTicketLite;

    iget-object v1, p0, Lcom/glympse/android/lib/gc;->cI:Lcom/glympse/android/api/GGlympse;

    invoke-static {v0, v1}, Lcom/glympse/android/lib/hi;->a(Lcom/glympse/android/lite/GTicketLite;Lcom/glympse/android/api/GGlympse;)V

    iput-object v2, p0, Lcom/glympse/android/lib/gc;->nT:Lcom/glympse/android/lite/GTicketLite;

    iput-object v2, p0, Lcom/glympse/android/lib/gc;->cI:Lcom/glympse/android/api/GGlympse;

    return-void
.end method

.method public onCompleted()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/gc;->nT:Lcom/glympse/android/lite/GTicketLite;

    iput-object v0, p0, Lcom/glympse/android/lib/gc;->cI:Lcom/glympse/android/api/GGlympse;

    return-void
.end method
