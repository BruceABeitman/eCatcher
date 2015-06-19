.class Lcom/lenovo/tonesdk/ToneSender$1;
.super Ljava/lang/Object;
.source "ToneSender.java"

# interfaces
.implements Lcom/lenovo/anyshare/sdk/internal/ct;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/tonesdk/ToneSender;->start(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/lenovo/tonesdk/ToneSender$1;->a:Lcom/lenovo/tonesdk/ToneSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerCompletion()V
    .registers 1

    return-void
.end method
