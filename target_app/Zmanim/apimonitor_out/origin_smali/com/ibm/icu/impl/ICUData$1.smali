.class final Lcom/ibm/icu/impl/ICUData$1;
.super Ljava/lang/Object;
.source "ICUData.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/ICUData;->exists(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    const-class v0, Lcom/ibm/icu/impl/ICUData;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
