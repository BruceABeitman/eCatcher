.class final Lcom/spotify/mobile/android/service/flow/logic/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/logic/e;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/e;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/e;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/e$1;->a:Lcom/spotify/mobile/android/service/flow/logic/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e$1;->a:Lcom/spotify/mobile/android/service/flow/logic/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/e;->b(Lcom/spotify/mobile/android/service/flow/logic/e;)Lcom/spotify/mobile/android/ui/actions/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e$1;->a:Lcom/spotify/mobile/android/service/flow/logic/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/e;->a(Lcom/spotify/mobile/android/service/flow/logic/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/b;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_2a

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/spotify/mobile/android/service/flow/logic/e$1;->a:Lcom/spotify/mobile/android/service/flow/logic/e;

    invoke-static {v4}, Lcom/spotify/mobile/android/service/flow/logic/e;->b(Lcom/spotify/mobile/android/service/flow/logic/e;)Lcom/spotify/mobile/android/ui/actions/b;

    iget-object v4, p0, Lcom/spotify/mobile/android/service/flow/logic/e$1;->a:Lcom/spotify/mobile/android/service/flow/logic/e;

    invoke-static {v4}, Lcom/spotify/mobile/android/service/flow/logic/e;->a(Lcom/spotify/mobile/android/service/flow/logic/e;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;->a:Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;

    const-string v6, "popup hard gate"

    invoke-static {v4, v5, v6, v3}, Lcom/spotify/mobile/android/ui/actions/b;->a(Landroid/content/Context;Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2a
    return-void
.end method
