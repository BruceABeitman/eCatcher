.class public Lorg/apache/james/mime4j/field/address/parser/ASTdomain;
.super Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
.source "ASTdomain.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser;I)V

    return-void
.end method


# virtual methods
.method public jjtAccept(Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1, p0, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;->visit(Lorg/apache/james/mime4j/field/address/parser/ASTdomain;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
