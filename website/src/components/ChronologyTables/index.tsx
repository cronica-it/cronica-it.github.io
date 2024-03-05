/*
 * This file is part of the Cronica-IT project (https://github.com/cronica-it).
 * Copyright (c) 2023 Liviu Ionescu. All rights reserved.
 *
 * Permission to use, copy, modify, and/or distribute this software
 * for any purpose is hereby granted, under the terms of the MIT license.
 *
 * If a copy of the license was not distributed with this file, it can
 * be obtained from https://opensource.org/license/mit/.
 */

// import clsx from 'clsx';
import Heading from '@theme/Heading';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';
import styles from './styles.module.css';

import { ChronologyRecord } from '@docusaurus/plugin-content-blog'

function ChronologyRow({ eventDateRange, title, permalink, isInternational }: ChronologyRecord) {
  const intlEventDateRange = eventDateRange + (isInternational ? ' (intl)' : '');

  return (
    <tr class="chronology">
      <td class="chronology">{intlEventDateRange}</td>
      <td class="chronology">
        <a href={permalink}>{title}</a>
      </td>
    </tr>
  )
}

function ChronologyTableHead() {
  return (
    <thead>
      <tr>
        <td class="chronology">Date</td>
        <td class="chronology">Evenimente</td>
      </tr>
    </thead>
  )
}

function ChronologyTableBody({ items }) {
  return (
    <tbody>
      {
        items.map((props: ChronologyRecord, idx) => (
          <ChronologyRow key={idx} {...props} />
        ))
      }
    </tbody>
  )
}

function ChronologyTable({ items }): JSX.Element {
  return (
    <>
      <table class="chronology">
        <ChronologyTableHead />
        <ChronologyTableBody items={items} />
      </table>
      <p class="chronology_length">({items.length} evenimente)</p>
    </>
  )
}

// <Heading as="h3">Evenimente, în ordine invers cronologică</Heading>

export function ChronologyTables({ items }): JSX.Element {
  const national_events =
    items.filter((item) => !item.isInternational)
  const international_events =
    items.filter((item) => item.isInternational).
      map((item) => {
        return { ...item, isInternational: false }
      })

  return (
    <section className={styles.chronology}>
      <div className="container">
        <Tabs>
          <TabItem value="nationale" label="Evenimente Naționale" >
            <ChronologyTable items={national_events} />
          </TabItem>
          <TabItem value="internationale" label="Evenimente Internaționale">
            <ChronologyTable items={international_events} />
          </TabItem>
          <TabItem value="toate" label="Toate Evenimentele" default>
            <ChronologyTable items={items} />
          </TabItem>
        </Tabs>
      </div>
    </section>
  );
}
