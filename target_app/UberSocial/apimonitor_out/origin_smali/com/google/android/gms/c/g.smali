.class public final Lcom/google/android/gms/c/g;
.super Lcom/google/android/gms/c/e;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/c/e;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/g;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;
    .registers 2

    new-instance v0, Lcom/google/android/gms/c/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/g;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x1

    instance-of v0, p0, Lcom/google/android/gms/c/g;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/google/android/gms/c/g;

    iget-object v0, p0, Lcom/google/android/gms/c/g;->a:Ljava/lang/Object;

    :goto_9
    return-object v0

    :cond_a
    invoke-interface {p0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    if-ne v2, v3, :cond_4d

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_25
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_28} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_28} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_28} :catch_3c

    move-result-object v0

    goto :goto_9

    :catch_2a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Binder object is null."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_33
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "remoteBinder is the wrong class."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not access the field in remoteBinder."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
