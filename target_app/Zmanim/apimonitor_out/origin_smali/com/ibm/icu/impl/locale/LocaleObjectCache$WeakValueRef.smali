.class Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;
.super Ljava/lang/ref/WeakReference;
.source "LocaleObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/locale/LocaleObjectCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakValueRef"
.end annotation


# instance fields
.field private _key:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;->_key:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;->_key:Ljava/lang/Object;

    return-object v0
.end method
