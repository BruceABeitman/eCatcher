.class public Lcom/googlecode/javacpp/Generator$MethodInformation;
.super Ljava/lang/Object;
.source "Generator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Generator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodInformation"
.end annotation


# instance fields
.field public allocator:Z

.field public annotations:[Ljava/lang/annotation/Annotation;

.field public arrayAllocator:Z

.field public bufferGetter:Z

.field public cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public deallocator:Z

.field public dim:I

.field public memberGetter:Z

.field public memberName:[Ljava/lang/String;

.field public memberSetter:Z

.field public method:Ljava/lang/reflect/Method;

.field public modifiers:I

.field public name:Ljava/lang/String;

.field public noOffset:Z

.field public noReturnGetter:Z

.field public overloaded:Z

.field public pairedMethod:Ljava/lang/reflect/Method;

.field public parameterAnnotations:[[Ljava/lang/annotation/Annotation;

.field public parameterRaw:[Z

.field public parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public returnRaw:Z

.field public returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public throwsException:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public valueGetter:Z

.field public valueSetter:Z

.field public withEnv:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
