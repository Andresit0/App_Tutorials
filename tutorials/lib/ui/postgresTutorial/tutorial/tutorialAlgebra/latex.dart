import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';

TeXViewWidget introduction(Color titleColor) {
  return _teXViewWidget(
      r"<h4>Relational Algebra (RA)</h4>",
      r"""
      Relation (R): Db table $$\\$$
      Attribute (A): Column of a table $$\\$$
      Tuples (t): Row of a table  $$\\$$
      k: Name of the attribute
      """,
      titleColor);
}

TeXViewWidget projection(Color titleColor) {
  return _teXViewWidget(
      r"<h5>$$\text{Projection} (\Pi)$$</h5>",
      r"""
      Select all \(t\) and some attributes \(A_1,A_2,...,A_n\) from a relation \(R\). Then, 
      \begin{equation}
        \Pi_{A_1,A_2,...,A_n}(R) = \{t[A_1,A_2,...,A_n]\ : t \in R \} 
      \end{equation} 
      $$
      \begin{array}{|c|c|}
        \hline
         \text{RA} &  \text{SQL}  \\
        \hline
        \hline
        \Pi_{A_1,A_2,...,A_n}(R)
        & 
         \text{select } A_1,A_2,...,A_n  \text{ from R}
        \\
        \hline
      \end{array}
      $$
      """,
      titleColor);
}

TeXViewWidget selection(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Selection} (\sigma)
      $$
      </h5>
      """, r"""
      Select all tuples \(t\) that satisfies the condition in the relation \(R\). Then, 
      \begin{equation}
        \sigma_{condition}(R) = \{ t \in R : condition(t) \quad is \quad true \} 
      \end{equation} 

      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        \sigma_{condition}(R)
        & 
        \text{select} * \text{from R where condition}
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget composition(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Composition} (\Pi) \text{ and } (\sigma)
      $$
      </h5>
      """, r"""
      Select attributes \(A_1,A_2,...,A_n\) and all tuples \(t\) that satisfies the condition from a relation \(R\). Then,
      \begin{equation}
          \Pi_{A_1,A_2,...,A_n} (\sigma_{condition}(R)) = \{t \in R : t[A_1,A_2,...,A_n] \And  condition(t) \quad is \quad true \} 
      \end{equation} 

      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        \Pi_{A_1,A_2,...,A_n} (\sigma_{condition}(R))
        & 
        \text{select } A_1,A_2,...,A_n \text{from R where condition}
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget tuplesWithoutDuplicate(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Tuples without duplicate information} (\delta)
      $$
      </h5>
      """, r"""
      Select all tuples \(t\) that satisfies the condition and \(t_a \neq t_c\) from a relation \(R\). Then,

      $$
      \begin{array}{|c|c|}
        \hline
        RA & SQL  \\
        \hline
        \hline
        \delta(R)
        & 
        \text{select DISTINCT} * \text{from R}
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget cartesianProduct(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Cartesian Product} (\sigma)
      $$
      </h5>
      """, r"""
      Set of tuples obtained when we combine two relation \(A,B\) where the tuples \(a \in A\) and \(b \in B\). Then,
      \begin{equation}
        AxB = \{(a,b): a \in A \And b \in B \}=(a_1,b_1),...,(a_m,b_1),...,(a_m,b_2)
      \end{equation}

      $$
      \begin{array}{|c|c|}
        \hline
        RA & SQL  \\
        \hline
        \hline
        AxB
        & 
        \text{select} * \text{from A,B}
        \\
        &
        \text{select} * \text{from A cross join B}
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget innerJoin(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Inner Join or Join} (\bowtie_k)
      $$
      </h5>
      """, r"""
      Union of two relations \(A,B\) by an attribute that has different name \((A_{.name}, B_{.name})\) and same value \((A_n = B_m)\). If the value appears in only one table then the tuple is not taken account.

      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        \sigma_{A_{.name} = B_{.name}}(A x B)
        & 
        \text{select} * \text{from A}
        \text{ INNER JOIN }
        B
        \text{ ON } A.name = B.name
        \\
        A \bowtie_{A_{.name} = B_{.name}} B
        &
        \text{select} * \text{from A}
        \text{ JOIN }
        B
        \text{ ON } A.name = B.name
        \\
        &
        \text{select} * \text{from A,B where } A.name = B.name
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget naturalJoin(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Natural Join } (\bowtie)
      $$
      </h5>
      """, r"""
      Union of two relations \(A,B\) by attributes that has same name \((A_{.name}, B_{.name})\) and same value \((A_n = B_m)\). If the value appears in only one table then the tuple is not taken account.

      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        \sigma_{A_{.name} = B_{.name}}(A x B)
        & 
        \text{select} *  \text{from A }
        \text{NATURAL JOIN }
        B
        \\
        A \bowtie B
        &
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget leftJoin(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Left Join } (A \sqsupset \bowtie_k B)
      $$
      </h5>
      """, r"""
      Union of two relations \(A,B\) by attributes that has same name \((A_{.name}, B_{.name})\) and same value \((A_n = B_m)\). If the value appears in only table \(A\) then the other values go to be null.

      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        A \sqsupset \bowtie_{k_{A_{.name}} = B_{.name}} B
        & 
        \text{select} * \text{from A }
        \text{LEFT JOIN }
        \text{B on } A.name = B.name
        \\
        & 
        \text{select} * \text{from A }
        \text{LEFT OUTER JOIN}
        \text{ B on } A.name = B.name
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget rightJoin(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Right Join } (A \bowtie \sqsubset_k B)
      $$
      </h5>
      """, r"""
      Union of two relations \(A,B\) by attributes that has same name \((A_{.name}, B_{.name})\) and same value \((A_n = B_m)\). If the value appears in only table \(B\) then the other values go to be null.

      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        A\bowtie \sqsubset_{A_{.name} = B_{.name}} B
        & 
        \text{select} * \text{from A }
        \text{RIGHT JOIN }
        \text{B on } A_{.name} = B_{.name}
        \\
        & 
        \text{select} * \text{from A }
        \text{RIGHT OUTER JOIN }
        \text{B on } A_{.name} = B_{.name}
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget fullJoin(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Full Join } (A \sqsupset \bowtie \sqsubset_k B)
      $$
      </h5>
      """, r"""
      Union of two relations \(A,B\) by attributes that has same name \((A_{.name}, B_{.name})\) and same value \((A_n = B_m)\). If the value appears in only table \(A\) then the other values go to be null and if the value appears in only table \(B\) then the other values go to be null.

      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        A\sqsupset \bowtie \sqsubset_{A_{.name} = B_{.name}} B
        & 
        \text{select} * \text{from A }
        \text{FULL OUTER JOIN}
        \text{B on } A_{.name} = B_{.name}
        \\
        & 
        \text{select} * \text{from A }
        \text{FULL JOIN }
        \text{B on } A_{.name} = B_{.name}
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget rename(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Rename } (\rho)
      $$
      </h5>
      """, r"""
      Variable used to rename a relation \(\rho_{new\_name}(R)\) or rename an attribute  \(\rho_{new\_name,(A_1,A_2,...,A_n)}(R)\) where \(A_1,A_2,...,A_n\)  could be new names.
      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        A\sqsupset \bowtie \sqsubset_{A_{.name} = B_{.name}} B
        & 
        \text{select} * \text{from A }
        \text{FULL OUTER JOIN}
        \text{B on } A_{.name} = B_{.name}
        \\
        & 
        \text{select} * \text{from A }
        \text{FULL JOIN }
        \text{B on } A_{.name} = B_{.name}
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget union(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Union } (\cup)
      $$
      </h5>
      """, r"""
      If we have two relations \(A,B\) with same \(length\) and \(types\) where \(type_{A_m} = type_{B_m}\). Then, \(R_{A_1,...,A_m} := A \cup B = t_A \cup t_B\) where \(\exists !\) \(t_{A_1,...,A_m} = t_{B_1,...,B_m}\).
      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        A \cup B
        & 
        \text{select} * \text{from A }
        \text{UNION }
        \text{select} * \text{from B;}
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget intersection(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Intersection } (\cap)
      $$
      </h5>
      """, r"""
      If we have two relations \(A,B\) with same \(length\) and \(types\) where \(type_{A_m} = type_{B_m}\). Then, \(R_{A_1,...,A_m} := A \cap B = t_A \cap t_B\)  where \(\exists !\) \(t_{A_1,...,A_m} = t_{B_1,...,B_m}\).
      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        A \cap B
        & 
        \text{select} * \text{from A }
        \text{INTERSECT }
        \text{select} * \text{from B;}
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget difference(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Difference } (-)
      $$
      </h5>
      """, r"""
      If we have two relations \(A,B\) with same \(length\) and \(types\) where \(type_{A_m} = type_{B_m}\). Then, \(R_{A_1,...,A_m} := A - B = t_A -t_B\)  where \(t_{A_1,...,A_m} \neq t_{B_1,...,B_m}\).
      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        A \cap B
        & 
        \text{select} * \text{from A }
        \text{EXCEPT }
        \text{select } * \text{from B;}
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget division(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Division } (\div)
      $$
      </h5>
      """, r"""
      If we have two relations \(A,B\) where \(A \cap B\) have the attributes \(A_{l+1},A_{l+2},...,A_m\). Then, \(A \div B\) returns all tuples \(t_1,t_2,...,t_n\) of \(A\) that satisfies all tuples of \(B\) without taking account attributes \( A_{l+1},A_{l+2},...,A_m \).
      If we have two tables \(A,B\) where the name of the attributes of \(A\) are \(1,2\) and the name for attribute \(B\) is \(2\). Then, \(A \div B\) in the relational algebra could be found using 
     
     $$
      \text{select } A.1 \text{ from A,B where } A.2 = B.2 \text{ group by } A.1 \text{ having } \text{ count}(*)= (\text{select count}(*) \text{ from } B);
     $$

     If we have two tables \(A,B\) where the name of the attributes of \(A\) are \(1,2,3,4\), and the name for attributes \(B\) are \(3,4\). Then, \(A \div B\) in the relational algebra could be found using
     
     $$
      \text{select } A.1, A.2 \text{ from } A,B \text{ where } A.3 = B.3 \text{ and } A.4 = B.4 \text{ group by } A.1, A.2 \text{ having count}(*)= (\text{select count}(*) \text{ from } B);
     $$

     Using this deduction, we could use the function "division (https://github.com/Andresit0/Postgres_Relational_Algebra_Division)" that returns a "div" temporal table. Then, we could obtain a division of two tables with
     
      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        A \div B
        & 
        \text{select DIVIDE }('A','B'); \text{select} * \text{ from DIV;}
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget assignation(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Assignation } (:=)
      $$
      </h5>
      """, r"""
      It is possible give relational expression name. For instance: \(R' := \Pi_{A_1}(R)\).
      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        R := R1
        & 
        \text{alter table } R  \text{ to } R1
        \\
        R_{A1} := R_{AA1}
        &
        \text{alter table } R \text{ rename column } A1 \text{ to } AA1;
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget aggregationFunction(Color titleColor) {
  return _teXViewWidget(r"""
      <h5>
      $$ 
        \text{Aggregation Function } (\mathscr{F})
      $$
      </h5>
      """, r"""
      \(\mathscr{F}_{function\_name(A_1,A_2,...,An)}(R)\) execute a function over attributes \(A_1,A_2,...,A_n\) into a \(R\) relation.
      $$
      \begin{array}{|c|c|}
        \hline
        \text{RA} & \text{SQL}  \\
        \hline
        \hline
        \mathscr{F}_{function\_name(A_1,A_2,...,An)}(R)
        & 
        \text{select Function}\_\text{Name} (A_1,A_2,...,A_n) \text{ from R};
        \\
        \hline
      \end{array}
      $$

      $$
      \begin{array}{|c|c|c|}
        \hline
        \text{RA FUNCTIONS} & \text{SQL FUNCTIONS} & \text{Description}  \\
        \hline
        \hline
        \mathscr{F}_{max(A_1)}(R)
        & 
        \text{select } max (A_1) \text{ from } R;
        &
        \text{maximum value of tuples}
        \\
        \mathscr{F}_{min(A_1)}(R)
        & 
        \text{select min} (A_1) \text{ from } R;
        &
        \text{minimum value of tuples}
        \\
        \mathscr{F}_{count(A_1)}(R)
        & 
        \text{select count } (A_1) \text{ from } R;
        &
        \text{tuples sum}
        \\
        \mathscr{F}_{avg(A_1)}(R)
        & 
        \text{select avg } (A_1) \text{ from } R;
        &
        \text{tuples average}
        \\
        \mathscr{F}_{concat(A_1,` \quad ',A_2)}(R)
        & 
        \text{select concat } (A_1,` \quad ',A_2) \text{ from } R;
        &
        \text{tuples concatenated}
        \\
        \mathscr{F}_{(A_1 || ` \quad ' || A_2)}(R)
        & 
        \text{select } A_1 || ` \quad ' || A_2 \text{ from } R;
        &
        \text{tuples concatenated}
        \\
        \mathscr{F}_{generate\_series(1,5)}(R)
        & 
        \text{select generate\_series} (1,5);
        &
        \text{tuples of int numbers } 1:5
        \\
        \mathscr{F}_{generate\_series(1,5)}(R)
        & 
        \text{select} * \text{ from } \text{ generate\_series } (1,5);
        &
        \text{tuples of int numbers } 1:5
        \\
        \hline
      \end{array}
      $$
      """, titleColor);
}

TeXViewWidget _teXViewWidget(String title, String body, Color titleColor) {
  return TeXViewColumn(
    children: [
      TeXViewDocument(title,
          style: TeXViewStyle(
              contentColor: titleColor,
              textAlign: TeXViewTextAlign.Center,
              fontStyle: TeXViewFontStyle(fontSize: 20))),
      TeXViewDocument(body,
          style: TeXViewStyle(
            margin: TeXViewMargin.only(top: 10),
            textAlign: TeXViewTextAlign.Left,
          ))
    ],
  );
}

class TeXViewDocumentExamples extends StatelessWidget {
  final TeXViewRenderingEngine renderingEngine;
  TeXViewDocumentExamples(
      {this.renderingEngine = const TeXViewRenderingEngine.katex()});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColorDark;
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        padding: EdgeInsets.all(10),
        child: TeXView(
          style: TeXViewStyle(
            contentColor: Colors.black,
            backgroundColor: Colors.white,
          ),
          renderingEngine: renderingEngine,
          child: TeXViewColumn(children: [
            introduction(primaryColor),
            projection(primaryColor),
            selection(primaryColor),
            composition(primaryColor),
            tuplesWithoutDuplicate(primaryColor),
            cartesianProduct(primaryColor),
            innerJoin(primaryColor),
            naturalJoin(primaryColor),
            leftJoin(primaryColor),
            rightJoin(primaryColor),
            fullJoin(primaryColor),
            rename(primaryColor),
            union(primaryColor),
            intersection(primaryColor),
            difference(primaryColor),
            division(primaryColor),
            assignation(primaryColor),
            aggregationFunction(primaryColor),
          ]),
        ),
      ),
    );
  }
}
