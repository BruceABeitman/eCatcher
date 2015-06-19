.class Landroid/support/v4/app/RemoteInputCompatApi20;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addResultsToIntent([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p0}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method static fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    array-length v0, p0

    new-array v1, v0, [Landroid/app/RemoteInput;

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_3f

    aget-object v2, p0, v0

    new-instance v3, Landroid/app/RemoteInput$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_3f
    move-object v0, v1

    goto :goto_3
.end method

.method static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 2

    invoke-static {p0}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static toCompat([Landroid/app/RemoteInput;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .registers 10

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    array-length v0, p0

    invoke-interface {p1, v0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->newArray(I)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v7

    const/4 v0, 0x0

    move v6, v0

    :goto_b
    array-length v0, p0

    if-ge v6, v0, :cond_2f

    aget-object v0, p0, v6

    invoke-virtual {v0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    invoke-virtual {v0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v0

    aput-object v0, v7, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_b

    :cond_2f
    move-object v0, v7

    goto :goto_3
.end method
