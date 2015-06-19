.class public Lcom/fasterxml/jackson/databind/BeanProperty$Std;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/BeanProperty;


# instance fields
.field protected final _contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

.field protected final _member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field protected final _name:Ljava/lang/String;

.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    return-void
.end method


# virtual methods
.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    .registers 6

    new-instance v0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    return-object v0
.end method
