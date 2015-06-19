.class public Lcom/glympse/android/hal/NameValue;
.super Ljava/lang/Object;
.source "NameValue.java"


# static fields
.field public static final _comparator:Lcom/glympse/android/hal/NameValue$NameValueComparator;


# instance fields
.field public _name:Ljava/lang/String;

.field public _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/glympse/android/hal/NameValue$NameValueComparator;

    invoke-direct {v0}, Lcom/glympse/android/hal/NameValue$NameValueComparator;-><init>()V

    sput-object v0, Lcom/glympse/android/hal/NameValue;->_comparator:Lcom/glympse/android/hal/NameValue$NameValueComparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/NameValue;->_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/glympse/android/hal/NameValue;->_value:Ljava/lang/String;

    return-void
.end method
