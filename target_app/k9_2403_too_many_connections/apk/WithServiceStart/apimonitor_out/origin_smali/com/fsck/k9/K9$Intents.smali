.class public Lcom/fsck/k9/K9$Intents;
.super Ljava/lang/Object;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/K9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Intents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/K9$Intents$EmailReceived;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/K9;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/K9;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/K9$Intents;->this$0:Lcom/fsck/k9/K9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
