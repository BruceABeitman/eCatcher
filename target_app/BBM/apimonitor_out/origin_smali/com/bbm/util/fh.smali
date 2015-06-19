.class final Lcom/bbm/util/fh;
.super Ljava/lang/Object;
.source "VoiceNoteRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/util/fg;


# direct methods
.method constructor <init>(Lcom/bbm/util/fg;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/fh;->a:Lcom/bbm/util/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/util/fh;->a:Lcom/bbm/util/fg;

    invoke-virtual {v0}, Lcom/bbm/util/fg;->c()V

    return-void
.end method
