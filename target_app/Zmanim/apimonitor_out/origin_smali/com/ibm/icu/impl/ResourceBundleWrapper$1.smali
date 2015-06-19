.class final Lcom/ibm/icu/impl/ResourceBundleWrapper$1;
.super Ljava/lang/Object;
.source "ResourceBundleWrapper.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cl:Ljava/lang/ClassLoader;

.field final synthetic val$resName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$1;->val$cl:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$1;->val$resName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$1;->val$cl:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$1;->val$cl:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$1;->val$resName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$1;->val$resName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_c
.end method
