.class public Lcom/glympse/android/hal/ControlsFactory;
.super Ljava/lang/Object;
.source "ControlsFactory.java"


# static fields
.field public static final CLASS_WIZARD:Ljava/lang/String; = ".GlympseSendWizard"

.field public static final INTENT_EXTRA_FLAGS:Ljava/lang/String; = "flags"

.field public static final INTENT_EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final INTENT_EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final INTENT_MODE_ABOUT:I = 0x4

.field public static final INTENT_MODE_INTRO:I = 0x1

.field public static final INTENT_MODE_MODIFY:I = 0x3

.field public static final INTENT_MODE_SEND:I = 0x2

.field public static final PACKAGE_WIZARDS:Ljava/lang/String; = "com.glympse.android.kit.send"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/glympse/android/lib/GGlympsePrivate;IILjava/lang/String;)V
    .registers 9

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.glympse.android.kit.send.GlympseSendWizard"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "flags"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "key"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showAbout(Lcom/glympse/android/lite/GGlympseLite;Lcom/glympse/android/lib/GGlympsePrivate;)Z
    .registers 6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/glympse/android/kit/send/GlympseHolder;->setGlympseLite(Ljava/lang/String;Lcom/glympse/android/lite/GGlympseLite;)V

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/glympse/android/kit/send/GlympseHolder;->setGlympse(Ljava/lang/String;Lcom/glympse/android/api/GGlympse;)V

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v1

    new-instance v2, Lcom/glympse/android/hal/u;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/glympse/android/hal/u;-><init>(Lcom/glympse/android/hal/GUiControlListener;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/glympse/android/kit/send/GlympseHolder;->setControlListener(Ljava/lang/String;Lcom/glympse/android/hal/GUiControlListener;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/glympse/android/hal/ControlsFactory;->a(Lcom/glympse/android/lib/GGlympsePrivate;IILjava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static showModifyWizard(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;ILcom/glympse/android/hal/GUiControlListener;)Z
    .registers 7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/glympse/android/kit/send/GlympseHolder;->setGlympse(Ljava/lang/String;Lcom/glympse/android/api/GGlympse;)V

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/glympse/android/kit/send/GlympseHolder;->setTicket(Ljava/lang/String;Lcom/glympse/android/api/GTicket;)V

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v1

    new-instance v2, Lcom/glympse/android/hal/u;

    invoke-direct {v2, p3, v0}, Lcom/glympse/android/hal/u;-><init>(Lcom/glympse/android/hal/GUiControlListener;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/glympse/android/kit/send/GlympseHolder;->setControlListener(Ljava/lang/String;Lcom/glympse/android/hal/GUiControlListener;)V

    const/4 v1, 0x3

    invoke-static {p0, v1, p2, v0}, Lcom/glympse/android/hal/ControlsFactory;->a(Lcom/glympse/android/lib/GGlympsePrivate;IILjava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static showSendWizard(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;ZILcom/glympse/android/hal/GUiControlListener;)Z
    .registers 9

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lcom/glympse/android/kit/send/GlympseHolder;->setGlympse(Ljava/lang/String;Lcom/glympse/android/api/GGlympse;)V

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/glympse/android/kit/send/GlympseHolder;->setTicket(Ljava/lang/String;Lcom/glympse/android/api/GTicket;)V

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v0

    new-instance v3, Lcom/glympse/android/hal/u;

    invoke-direct {v3, p4, v2}, Lcom/glympse/android/hal/u;-><init>(Lcom/glympse/android/hal/GUiControlListener;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/glympse/android/kit/send/GlympseHolder;->setControlListener(Ljava/lang/String;Lcom/glympse/android/hal/GUiControlListener;)V

    if-eqz p2, :cond_2a

    move v0, v1

    :goto_26
    invoke-static {p0, v0, p3, v2}, Lcom/glympse/android/hal/ControlsFactory;->a(Lcom/glympse/android/lib/GGlympsePrivate;IILjava/lang/String;)V

    return v1

    :cond_2a
    const/4 v0, 0x2

    goto :goto_26
.end method

.method public static showToastRateLimited()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glympse/android/hal/t;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/glympse/android/api/R$string;->rate_limited:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_19
    return-void
.end method
