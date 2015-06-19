.class public final Lcom/fsck/k9/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final READ_ATTACHMENT:Ljava/lang/String; = "com.fsck.k9.permission.READ_ATTACHMENT"

.field public static final REMOTE_CONTROL:Ljava/lang/String; = "com.fsck.k9.permission.REMOTE_CONTROL"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
