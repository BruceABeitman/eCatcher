.class  Lcom/ibm/icu/util/ULocale$IDParser$1;
.super Ljava/lang/Object;
.source "ULocale.java"
.implements Ljava/util/Comparator;
.field final synthetic this$0:Lcom/ibm/icu/util/ULocale$IDParser;
.method constructor <init>(Lcom/ibm/icu/util/ULocale$IDParser;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/util/ULocale$IDParser$1;->this$0:Lcom/ibm/icu/util/ULocale$IDParser;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/lang/String;
check-cast p2, Ljava/lang/String;
invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
return v0
.end method