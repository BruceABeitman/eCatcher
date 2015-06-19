.class public interface abstract Lcom/ibm/icu/text/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# static fields
.field public static final SYMBOL_REF:C = '$'


# virtual methods
.method public abstract lookup(Ljava/lang/String;)[C
.end method

.method public abstract lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;
.end method

.method public abstract parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
.end method
