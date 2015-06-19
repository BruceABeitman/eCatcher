.class Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Provider"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x761f7a2f5e3b8b6dL


# instance fields
.field public domain:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public incomingUriTemplate:Ljava/net/URI;

.field public incomingUsernameTemplate:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public outgoingUriTemplate:Ljava/net/URI;

.field public outgoingUsernameTemplate:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
